private
postFieldsOf: aSwazooRequest into: aDictionaryMerger
	"break encapsulation"
	aSwazooRequest ensureFullRead.
	aSwazooRequest postData keysAndValuesDo: [ :key :value |
		| previousData data |
		data := value filename isEmptyOrNil
			ifTrue: [ self decodeUrl: value value ]
			ifFalse: [
				WAFile new
					fileName: (self decodeUrl: value filename);
					contentType: value contentType seasideMimeType;
					contents: value value;
					yourself ].
		aDictionaryMerger at: key put: data ]