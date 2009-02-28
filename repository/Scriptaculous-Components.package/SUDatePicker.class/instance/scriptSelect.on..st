scripting
scriptSelect: aDate on: script 
	"Ajax select"
	self select: aDate.
	widgetId isNil ifTrue: [ ^ self ].
	script scriptaculous element
		id: widgetId;
		access: 'value';
		assign: self formattedResult.
	script scriptaculous element
		id: uid;
		remove.
	open := false