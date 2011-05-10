connect = require 'connect'
coffeekup = require './lib/coffeekup.coffee'
meryl = require 'meryl'
twitter = require 'twitter'
sys = require 'sys'

tweet = new twitter({
    consumer_key: 'blank'
    consumer_secret: 'blank'
})

tweets = []

findTweets = () ->
  tweet.search('#chsjs', (data) ->
    statuses = eval('(' + sys.inspect(data) + ')')
    results = statuses.results
    tweets.length = 0
    for result in results
      tweets.push('<img class="twitter_pic left" src="' + 
        result.profile_image_url + 
        '"/><div class="left">' + 
        result.from_user + 
        '</div><div class="tweet-text">' +
        result.text + 
        '</div><div class="clear"></div>'
      )
  )
  return tweets

meryl.p(connect.static('public'))

meryl.get '/', (req, resp) ->
  resp.render 'layout',
    content: 'index'
    context:
      tweets: findTweets()

server = connect(
  meryl.cgi
    templateExt: '.coffee'
    templateFunc: coffeekup.adapters.meryl
    templateDir: 'views'
)
server.listen(9491)
console.log 'listening on port 9491...'