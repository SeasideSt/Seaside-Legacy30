private
createRequestContextWithFieldKey: fieldString cookieKey: cookieString
	| fields cookies request |
	fields := Dictionary new.
	fieldString isNil ifFalse: [ fields at: self fieldName put: fieldString ].
	cookies := OrderedCollection new.
	cookieString isNil ifFalse: [ cookies add: ((WARequestCookie key: self cookieKey value: cookieString ) path: self path; yourself) ].
	request := WARequest
		method: 'GET'
		url: self path
		headers: Dictionary new
		fields: fields
		cookies: cookies
		remoteAddress: '127.0.0.1'.
	^ WARequestContext request: request response: WABufferedResponse new