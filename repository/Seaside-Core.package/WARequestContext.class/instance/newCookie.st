accessing-dynamic
newCookie
	"Create a new cookie. Try to restrict it as much as possible to make stealing it as hard as possible. Some of these restrictions may be too severe for some applications, in which case the sender can relax them."
	
	| cookie baseUrl |
	baseUrl := self entryPoint baseUrl.
	cookie := WACookie new
		path: baseUrl pathString;
		httpOnly: true;
		yourself.
	baseUrl hostname isNil ifFalse: [ cookie domain: baseUrl hostname ].
	baseUrl scheme = 'https' ifTrue: [ cookie secure: true ].
	(baseUrl port notNil and: [ baseUrl hostname notNil ]) ifTrue: [ cookie port: baseUrl port ].
	^ cookie