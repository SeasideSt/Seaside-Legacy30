deprecated
closePopupWithoutReloadingOpener
	self seasideDeprecatedApi: 'WASession>>closePopupWithoutReloadingOpener'
		details: 'Use WARequestContext>>closeThisPopup'.
		
	^ self requestContext closeThisPopup