private
convertToInteger: aString max: maxValue 
	^ (aString asNumber asInteger max: 0) min: maxValue