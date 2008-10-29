private
configureContext: aRequestContext
	aRequestContext server: (
		WAServerAdaptor new
		codec: (SeasidePlatformSupport codecForEncoding: 'utf-8');
		yourself)