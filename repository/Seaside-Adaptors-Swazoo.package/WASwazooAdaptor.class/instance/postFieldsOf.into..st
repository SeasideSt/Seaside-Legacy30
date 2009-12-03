private
postFieldsOf: aNativeRequest into: aDictionaryMerger
	"break encapsulation"
	aNativeRequest ensureFullRead.
	aNativeRequest postData keysAndValuesDo: [ :key :value |
		| previousData data |
		data := value filename isEmptyOrNil
			ifTrue: [ self codec url decode: value value ]
			ifFalse: [
				| isoCodec |
				isoCodec := GRCodec forEncoding: 'ISO-8859-1'.
				WAFile new
					fileName: (self codec url decode: value filename);
					contentType: value contentType seasideMimeType;
					"does a 1:1 mapping from character values to bytes"
					contents: (isoCodec encode: value value);
					yourself ].
		aDictionaryMerger at: key put: data ]