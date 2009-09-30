private
supportedEncodingNames
	"answers the names of the encodings supported by this class"
	^TextConverter allEncodingNames
		addAll: self additionalLatin1CodecNames;
		removeAllFoundIn: UTF8TextConverter encodingNames;
		yourself