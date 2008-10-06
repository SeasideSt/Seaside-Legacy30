private
utf16String
	| utf16 |
	utf16 := String new: self latin1String size * 2.
   	self latin1String with: (2 to: utf16 size by: 2) do: [ :ch :index |
       utf16 at: index put: ch ].
	^utf16