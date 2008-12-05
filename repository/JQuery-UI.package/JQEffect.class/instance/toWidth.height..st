convenience
toWidth: aWidthInteger height: aHeightInteger
	self to: (WASmallDictionary new
		at: 'width' put: aWidthInteger; 
		at: 'height' put: aHeightInteger;
		yourself)
