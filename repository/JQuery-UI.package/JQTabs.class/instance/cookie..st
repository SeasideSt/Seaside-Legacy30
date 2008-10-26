options
cookie: aObject
	"Store the latest active (clicked) tab in a cookie. The cookie is used to determine the active tab on the next page load. Requires cookie plugin. The object needs to have key/value pairs of the form the cookie plugin expects as options. Available options: &#123; expires: 7, path: '/', domain: 'jquery.com', secure: true &#125;"

	self optionAt: 'cookie' put: aObject