accessing
realm
	"Answer the realm to be displayed in the authentication dialog. Defaults to the description of the owning handler."
	
	^ realm ifNil: [ realm := self handler description ]