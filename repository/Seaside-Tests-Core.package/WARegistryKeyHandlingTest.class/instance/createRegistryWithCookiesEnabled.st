private
createRegistryWithCookiesEnabled
	| registry |
	registry := self createRegistry.
	registry configuration at: #useCookies put: true.
	^ registry