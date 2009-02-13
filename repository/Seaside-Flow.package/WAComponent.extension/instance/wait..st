*seaside-flow
wait: aBlock
	"Evaluate aBlock and pass in a continuation that can be evaluated to answer to the place where this very method was called. Note that after evaluating aBlock a re-rendering of the receiver is enfored. Do not use this method, if you don't understand this comment."

	^ WAPlatform current suspendFlowDo: [ :cc |
		aBlock value: cc.
		WARenderNotification signal ]