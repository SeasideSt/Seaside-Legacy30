private
beAwareOfChangeOf: anAspectSymbol with: aParameter from: anEntryPoint
	(anEntryPoint == self
		and: [anAspectSymbol == #name]) ifTrue: [^ self].
	"Here when anything has changed but the name in the
	receiver"
	version := self version + 1.
	lastUpdate := TimeStamp now.

	"following line is for VW Seaside to handle multiple top level dispatchers"
	self changed