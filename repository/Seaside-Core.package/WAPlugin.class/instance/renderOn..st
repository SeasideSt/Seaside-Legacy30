rendering
renderOn: html
	"A default render method to display the interface of the receiving plugin. Might be overriden with specific behavior in subclasses."

	self isActive
		ifFalse: [ ^ self ].
	html anchor
		title: self tooltip;
		class: self cssClass;
		callback: [ self execute ];
		with: self label