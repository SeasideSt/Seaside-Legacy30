accessing-dynamic
handler
	"Answer the current request handler or nil."

	^ self handlers isEmpty ifFalse: [ self handlers first ]