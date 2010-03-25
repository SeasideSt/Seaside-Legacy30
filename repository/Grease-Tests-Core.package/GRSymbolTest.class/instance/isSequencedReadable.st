configuration
isSequencedReadable
	"Really should be true, but a Symbol is immutable, so copying it is a no-op
	 which makes #copyUpTo: and #copyUpToLast: fail."
	^ false