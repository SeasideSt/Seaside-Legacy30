content
unableToResumeResponse
	| content |
	content := WARenderCanvas builder
		fullDocument: true;
		rootBlock: [ :root | root title: 'Unable to proceed' ];
		render: [ :html |
			html heading level1; with: 'Unable to proceed - hit Refresh to retry'.
			html paragraph: 'Some exceptions cannot be resumed. You will usually see this page if you hit Proceed while debugging one of these exceptions. Your request was aborted but you can retry it by refreshing the page.' ].
	self requestContext respond: [ :response |
		response
			internalError;
			nextPutAll: content ]