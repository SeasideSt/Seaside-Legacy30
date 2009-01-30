load scripts
writeLoadScripts
	| attributes |
	attributes := WAHtmlAttributes new.
	attributes at: 'type' put: 'text/javascript'.
	self openTag: 'script' attributes: attributes.
	self wrapLoadScripts: [
		loadScripts 
			do: [ :each | self writeLoadScript: each ]
			separatedBy: [ self writeLoadScriptSeparator ] ].
	self closeTag: 'script'