accessing
session
	^ session ifNil: [ session := WACurrentSession value ]