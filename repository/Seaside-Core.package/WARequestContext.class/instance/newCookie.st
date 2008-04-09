initialization
newCookie
	"Creates a new cookie. Tries to put as many restrictions on it as possible and make stealing it has hard a possible. Some of these restrictions might be to severe for your application, you can always loosen them."
	| cookie baseUrl |
	baseUrl := self handler baseUrl.
	cookie := WACookie new
		path: baseUrl pathString;
		httpOnly: true;
		yourself.
	baseUrl hostname isNil ifFalse: [ cookie domain: baseUrl hostname ].
	baseUrl scheme = 'https' ifTrue: [ cookie secure: true ].
	(baseUrl port notNil and: [ baseUrl hostname notNil ]) ifTrue: [ cookie port: baseUrl port ].
	^ cookie