public
redirectResponseFor: aUrl
	^ (self configuration valueAt: #redirectHandler) redirectTo: aUrl