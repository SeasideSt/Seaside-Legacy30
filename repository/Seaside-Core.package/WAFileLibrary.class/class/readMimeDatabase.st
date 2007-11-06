private
readMimeDatabase
	"reads /etc/mime.types for mime types"
	| stream content types tokens value keys |
	stream := CrLfFileStream readOnlyFileNamed: '/etc/mime.types'.
	content := [ stream contentsOfEntireFile ]
		ensure: [ stream close ].
	types := Dictionary new.
	content linesDo: [ :each |
		(each isEmpty or: [ each first = $# ]) ifFalse: [
			tokens := each findTokens: String tab.
			tokens size > 1 ifTrue: [
				value := tokens first.
				keys := tokens second findTokens: ' '.
				keys do: [ :key |
					types at: key put: value ] ] ] ].
	^types