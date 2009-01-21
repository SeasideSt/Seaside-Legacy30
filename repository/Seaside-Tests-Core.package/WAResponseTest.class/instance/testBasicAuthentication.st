testing-conveniance
testBasicAuthentication
	self response basicAuthenticationRealm: 'Seaside'.
	self assertLines: #('HTTP/1.1 401 Unauthorized' 'WWW-Authenticate: Basic realm="Seaside"' 'Content-Length: 0' '')