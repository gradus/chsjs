doctype 5
html ->
  head ->
    title 'Charleston, SC JavaScript User Groups'
    link rel: 'stylesheet', href: '/stylesheets/app.css'
  body ->
    div id: 'wrap', ->
      div id: 'header', ->
        a href: '/', ->
          h1 ->
            "Charleston JavaScript User Group"
      div id: 'content',
        -> @render @content
      div id: 'footer', ->
        p ->
          em 'Powered by', a href: 'http://nodejs.org/', target: '_blank', ->
            img src: '/images/node.png'

