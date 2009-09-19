initialization
setClass: aClass 
	class := aClass.
	self setProtocol: #rendering.
	self setSelector: #renderContentOn: