
div class: "right", ->
  a href: "http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=Jack+Russell+Software+Co,+Cliffwood+Drive,+Mount+Pleasant,+SC&aq=0&sll=37.0625,-95.677068&sspn=37.871902,63.544922&ie=UTF8&hq=Jack+Russell+Software+Co,&hnear=Cliffwood+Dr,+Mt+Pleasant,+South+Carolina+29464&ll=32.79669,-79.884059&spn=0.009379,0.015514&z=16", ->
    img src: "/images/map.png"
div class: "left", ->
	h2 ->
	  "Everyone is welcome."
	h3 ->
	  	"Schedule &amp; Location"
  "Meetups are the last<br />" +
  "Wednesday of the month <br />" +
  "from 6:30 to 8:30<br /><br />" +
  "Jack Russell Software <br />" +
  "1067 Cliffwood Drive <br />" +
  "Mount Pleasant, SC  29464 <br /><br />"
div class: "clear"
div id: "tweets", ->
for tweet in @tweets
 p ->
   tweet
