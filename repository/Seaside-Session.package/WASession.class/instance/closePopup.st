deprecated
closePopup
	self seasideDeprecatedApi: 'WASession>>closePopup'
		details: 'Use WARequestContext>>closeThisPopupAndReloadOpener'.
		
	^ self requestContext closeThisPopupAndReloadOpener