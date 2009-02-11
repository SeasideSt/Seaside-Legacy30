scripting
scriptSelect: aDate on: script 
	"Ajax select"
	self select: aDate.
	widgetId ifNotNil: 
		[ script scriptaculous element
			id: widgetId;
			access: 'value';
			assign: self formattedResult.
		script scriptaculous element
			id: uid;
			remove.
		open := false ]