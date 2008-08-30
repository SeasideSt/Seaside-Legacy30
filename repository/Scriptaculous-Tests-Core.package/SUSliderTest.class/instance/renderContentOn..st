rendering
renderContentOn: html
	| trackId handleId positionId |
	trackId := html nextId.
	handleId := html nextId.
	positionId := html nextId.
	html div id: trackId; class: 'track'; with: [ html div id: handleId; class: 'handle' ].
	html paragraph id: positionId; with: position.
	html script: (html slider
		handleId: handleId;
		trackId: trackId;
		value: position;
		range: (0 to: 100);
		onChange: (html updater
			id: positionId;
			triggerSliderCallback: [ :value | position := value rounded];
			callback: [ :renderer | renderer render: position ]))