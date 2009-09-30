rendering
renderInline: aBlock factor: factor key: key on: html 
	| startTime endTime count backColor anAssociation title referenceValue spi context document renderer stream |
	count := 0.
	anAssociation := referenceDict 
		at: key
		ifAbsent: [ 'Undefined' -> 100000 ].
	title := anAssociation key.
	referenceValue := anAssociation value.
	stream := WriteStream on: String new.
	document := builder documentClass 
		on: stream
		codec: builder codec.
	context := WARenderContext new.
	context document: document.
	context
		actionUrl: builder actionUrl;
		resourceUrl: builder resourceUrl.
	renderer := builder rendererClass context: context.
	builder 
		openDocument: document
		context: context.
	html div
		class: 'bench';
		with: 
			[ html heading: title.
			startTime := Time millisecondClockValue.
			endTime := startTime + 100.
			[ Time millisecondClockValue < endTime ] whileTrue: 
				[ count := count + 1.
				renderer
					render: aBlock;
					flush ] ].
	builder closeDocument: document.
	spi := (count / referenceValue * 100) rounded.
	backColor := spi > 100 
		ifTrue: [ '#5f5' ]
		ifFalse: 
			[ spi < 50 
				ifTrue: [ '#f55' ]
				ifFalse: [ '#55f' ] ].
	duration := duration + spi.
	html div
		style: 'float:left;padding:4px';
		with: 
			[ html big: spi greaseString , ' SPI'.
			html span
				class: 'iteration';
				with: '(' , count greaseString , ' iterations)'.
			html break.
			html div
				class: 'rect';
				style: 'background:' , backColor , ';width:' , (spi * 2) greaseString , 'px' ].
	html div style: 'clear:both'