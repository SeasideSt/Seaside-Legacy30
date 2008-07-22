values
localValueAt: aSymbol ifAbsent: absentBlock
	"should check whether my ancestors have this attribute otherwise I shouldn't be giving a value"
	^ self overrides at: aSymbol ifAbsent: absentBlock.
