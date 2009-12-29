*seaside-flow
wait: aBlock 
	"Evaluate aBlock and pass in a continuation that can be evaluated to answer to the place where this very method was called."
	^ GRPlatform current suspendFlowDo: [ :cc | aBlock value: cc ]