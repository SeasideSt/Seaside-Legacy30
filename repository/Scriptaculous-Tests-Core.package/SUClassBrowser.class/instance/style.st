rendering
style
	^ '#lightbox {
	background: url(' , (SUAllTestLibrary / #demoGif) seasideString , ') repeat white;
	border: 1px solid #e8a400;
	padding: 1em;
	width: 640px;
}
#lightbox h1 {
	margin: 0;
	padding: 0;
	font-size: 15px;
	text-align: center;
	padding-bottom: 1em;
}
#lightbox #categories, 
#lightbox #selectors {
	float: left;
	width: 50%;
}
#lightbox div.clear {
	clear: both;
	height: 1em;
}
#lightbox #categories select, 
#lightbox #selectors select {
	width: 100%;
}
#lightbox #source {
	padding: 1em;
	border: 1px solid #dddddd;
	background-color: #f5f5f5;
	font: 12px Lucida Sans Typewriter, Courier, monospace;
}
#lightbox #close {
	text-align: center;
}'