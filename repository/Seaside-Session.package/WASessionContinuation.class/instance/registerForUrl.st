private
registerForUrl
	| url |
	url := self session actionUrlForContinuation: self.
	self updateUrl: url.
	^ url