initialize-release
initializeTask
	[ [ self answer: self go ] repeat ]
		on: WARenderNotification
		do: [ :err | ]