private
compileBinary: aByteArrayOrString selector: aSymbol
	"compiles aByteArrayOrString into a method named aSymbol that returns aByteArrayOrString as a byte array"
	| code |
	code := SeasidePlatformSupport asMethodReturningByteArray: aByteArrayOrString named: aSymbol.
	SeasidePlatformSupport compile: code into: self classified: self methodCategory