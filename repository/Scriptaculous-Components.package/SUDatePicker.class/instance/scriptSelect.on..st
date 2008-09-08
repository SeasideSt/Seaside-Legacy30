scripting
scriptSelect: aDate on: script
	"Ajax select"
	self select: aDate.
	widgetId ifNotNil: [
		script element
			id: widgetId;
			access: 'value';
			assign: aDate mmddyyyy.
		buttonId ifNotNil: [
			script element
				id: buttonId;
				styleAt: 'display' put: 'inline'].
		script element
			id: uid;
			remove]
		