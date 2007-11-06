private
createMimeDatabaseString
	"Teads /etc/mime.types for mime types and creates the #defaultMimeTypes method.
	You should not execute this method. If you still do it remember to send #initialize."
	^String streamContents: [ :stream |
		| database |
		stream nextPutAll:
'defaultMimeTypes
	^ #(
'.
		database := self readMimeDatabase.
		database keysSortedSafely do: [ :key |
			 stream
				nextPut: Character tab;
				nextPut: Character tab;
				print: key;
				space;
				print: (database at: key);
				cr ].
		stream nextPutAll: '
	)' ]