private
createHandlers
	^ super createHandlers , (Array with: WAApplication new with: WASession new)