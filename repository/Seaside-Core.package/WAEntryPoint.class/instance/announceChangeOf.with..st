private
announceChangeOf: anAspectSymbol with: aParameter
	"Short-circuit the dependency mechanics"
	self rootDispatcher isNil ifTrue: [^nil "Discard this change"].
	self rootDispatcher beAwareOfChangeOf: anAspectSymbol with: aParameter from: self