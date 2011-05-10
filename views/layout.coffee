doctype 5
html ->
  head ->
	meta charset: 'utf-8', 
    title 'Charleston, SC JavaScript User Groups',
    link rel: 'stylesheet', href: '/stylesheets/app.css',
	script src: '/javascripts/jquery-1.5.2.min.js',
  body ->
    div id: 'wrap', ->
      div id: 'header', ->
 		div class: 'header-content', ->
			div class: 'title', ->
	        a href: '/', ->
	          h1 ->
	            "Charleston JavaScript User Group"
      div id: 'content',
        -> @render @content, @context
		div id: 'footer', ->
		        div class: 'footer-content', ->
		          p ->
		            em 'Powered by', a href: 'http://nodejs.org/', target: '_blank', ->
		              img src: '/images/node.png'

	 		
