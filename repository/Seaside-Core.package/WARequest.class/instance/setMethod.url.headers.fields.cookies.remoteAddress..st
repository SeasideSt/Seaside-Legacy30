private
setMethod: methodString url: aUrlOrString headers: headerDictionary fields: fieldDictionary cookies: cookieCollection remoteAddress: addressString
	method := methodString asUppercase.
	url := aUrlOrString seasideUrl.
	headers := headerDictionary.
	fields := fieldDictionary.
	cookies := cookieCollection.
	remoteAddress := addressString