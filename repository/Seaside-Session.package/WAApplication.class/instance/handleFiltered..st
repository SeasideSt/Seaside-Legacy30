handling
handleFiltered: aRequestContext 
	"Seaside applications do not respond to prefetch requests and only understand GET and POST requests."
	
	(aRequestContext request isPrefetch not and: [ self isImplemented: aRequestContext request method ]) 
		ifTrue: [ super handleFiltered: aRequestContext ]
		ifFalse: [ 
			aRequestContext responseGenerator
				notImplemented;
				respond ]