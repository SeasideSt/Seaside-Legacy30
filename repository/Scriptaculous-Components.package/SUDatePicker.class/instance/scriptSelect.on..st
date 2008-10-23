scripting
scriptSelect: aDate on: script 
	"Ajax select"
	self select: aDate.
	widgetId ifNotNil: 
		[ script element
			id: widgetId;
			access: 'value';
			assign: self formattedResult.
		script element
			id: uid;
			remove.
		open := false ]