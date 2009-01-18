processing
handle: aRequestContext
	"Handle a request with the context aRequestContext and answer a response. Do not override this method, instead subclass #handleFiltered: to allow filters process the request first."

	^ aRequestContext push: self while: [ self filter handleFiltered: aRequestContext ]