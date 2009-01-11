private
padResponse: aResponse
	"If you create an error page that's too small, Microsoft Internet Explorer will display its own error page that includes a link to the MSN network search engine rather than your own error page. See <http://www.404-error-page.com/404-error-page-too-short-problem-microsoft-ie.shtml> for details."
	
	^ (aResponse stream size < 512 and: [ #(400 403 404 405 406 408 409 410 500 501 505) includes: aResponse status ])
		ifTrue: [ aResponse nextPutAll: (String new: 512 withAll: $ ) ]