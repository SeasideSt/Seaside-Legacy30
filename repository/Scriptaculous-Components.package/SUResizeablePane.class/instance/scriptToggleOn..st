scripting
scriptToggleOn: script
	| mainId isOpen |
	mainId := self mainId.
	"isOpen := currentHeight > 20."
	isOpen := open.
	isOpen ifTrue: [script element id: mainId; styleAt: 'height' put: '20px'.
				open := false.
				script element id: 'gfx',uid; removeClassName: 'gfxopen';addClassName: 'gfx']
		ifFalse: [(loaded not or: [alwaysRefresh]) ifTrue: [script element id: uid; update: body.
															loaded := true].
				open := true.
				script element id: uid; removeClassName: 'closed'.
				script element id: mainId; styleAt: 'height' put: '300px'.
				script element id: 'gfx',uid;removeClassName: 'gfx'; addClassName: 'gfxopen'.
				].
