private
converter
	^(self class latin1CodecNames includes: self name)
		ifTrue: [ Latin1TextConverter new ]
		ifFalse: [ TextConverter newForEncoding: self name ]