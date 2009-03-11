rendering
renderDurationFor: aBlock factor: factor key: key on: html
	| startTime endTime count backColor anAssociation title referenceValue |
	count := 0.
	anAssociation := referenceDict at: key ifAbsent: ['Undefined' -> 100000].
	title := anAssociation key.
	referenceValue := anAssociation value.
	html div
		class: 'bench';
		with: [html heading: title.
			startTime := Time millisecondClockValue.
			endTime := startTime + 50.
			[Time millisecondClockValue < endTime]
				whileTrue: [
					count := count + 1.
					aBlock value: html value: count.
					]].
	
	count := ((count / referenceValue ) * 100) rounded.
	backColor := count > 100 ifTrue: ['#5f5'] ifFalse: [count < 50 ifTrue: [ '#f55' ] ifFalse: [ '#55f' ] ].
	duration := duration + count.
	html
		div style: 'float:left;padding:4px';
		with: [html text: count asString, ' SPI'.
				html break.
				html div style: 'position:relative;border: 1px solid #ccc;background:', backColor , ';height:14px;width:' , (count * 2) asString, 'px'].
	html div style: 'clear:both'	