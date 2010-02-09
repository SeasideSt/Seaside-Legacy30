configuration
isValidNewSequencedResponseClass: aClass
	"Answer whether aClass is a valid return type for methods that return a new sequenced
	collection. These are methods such as #copyFrom:to: or #reversed, which are
	defined by ANSI for most classes to return the same class as the receiver.
	For Interval (and may other cases), however, ANSI specifies that the response
	may be any <sequencedReadableCollection."
	
	^ self isSequencedReadable
		ifTrue: [ (aClass == self collectionClass) or: [
					aClass allSuperclasses includes: self collectionClass ] ]
		ifFalse: [ aClass == Array or: [
					aClass allSuperclasses includes: Array ] ]