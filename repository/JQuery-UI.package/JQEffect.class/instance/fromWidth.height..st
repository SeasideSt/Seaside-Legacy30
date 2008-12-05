convenience
fromWidth: aWidthInteger height: aHeightInteger
	self from: (WASmallDictionary new
		at: 'width' put: aWidthInteger;
		at: 'height' put: aHeightInteger;
		yourself)
