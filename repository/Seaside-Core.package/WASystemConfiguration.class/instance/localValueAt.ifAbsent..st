values
localValueAt: aSymbol ifAbsent: absentBlock
	| attribute value |
	"should check whether my ancestors have this attribute otherwise I shouldn't be giving a value"
	value := self overrides at: aSymbol ifAbsent: [nil].
	^ value isNil ifTrue: [
		attribute := self localAttributeNamed: aSymbol ifAbsent: [^ absentBlock value].
		value := attribute default.
		value ifNil: absentBlock]