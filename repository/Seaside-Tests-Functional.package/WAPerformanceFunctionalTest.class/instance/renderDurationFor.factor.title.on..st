rendering
renderDurationFor: aBlock factor: factor title: title on: html
	| startTime endTime count |
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
	duration := duration + count.
	html
		div style: 'float:left;padding:4px';
		with: [html text: count asString, ' iterations'.
				html break.
				html div style: 'position:relative;border: 1px solid #ccc;background:#5f5;height:14px;width:' , (count * factor / 10) rounded asString, 'px']	