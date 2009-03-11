rendering
renderDurationFor: aBlock factor: factor title: title on: html
	| startTime endTime count backColor |
	count := 0.
	html div
		style: 'position:relative;height:60px;width:50%;border: 1px solid #ccc;overflow:hidden;float:left';
		with: [html heading: title.
			startTime := Time millisecondClockValue.
			endTime := startTime + 50.
			[Time millisecondClockValue < endTime]
				whileTrue: [
					count := count + 1.
					aBlock value: html value: count.
					]].
	backColor := factor == 1 ifTrue: ['#5f5'] ifFalse: ['#55f'].
	duration := duration + count.
	html
		div style: 'float:left;padding:4px';
		with: [html text: count asString, ' iterations'.
				html break.
				html div style: 'position:relative;border: 1px solid #ccc;background:', backColor , ';height:14px;width:' , (count * factor / 10) rounded asString, 'px']	