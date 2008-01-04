*scriptaculous-core
asJavascript
	^ String streamContents: [ :stream | self javascriptOn: stream ]