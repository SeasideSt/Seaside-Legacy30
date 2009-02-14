accessing
realm
	"Answer the realm to be displayed in the authentication dialog. Defaults to the description
	of the owning handler.
	
	Note: this currently means that this will only work with subclasses of WAEntryPoint, since
	only those classes implement #description."
	
	^ realm ifNil: [ realm := self handler class description ]