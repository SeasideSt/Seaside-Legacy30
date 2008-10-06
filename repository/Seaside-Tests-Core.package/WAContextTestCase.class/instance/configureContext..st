private
configureContext: aRequestContext
	aRequestContext server: (
		WAServer new
		codec: (SeasidePlatformSupport codecForEncoding: 'utf-8');
		yourself)