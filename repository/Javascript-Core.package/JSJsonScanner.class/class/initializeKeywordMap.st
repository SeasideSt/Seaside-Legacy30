generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(10 'false' 1 ) #(10 'null' 7 ) #(10 'true' 6 ) ) do: 
				[:each | 
				(keywordMap at: each first ifAbsentPut: [Dictionary new]) at: (each at: 2)
					put: each last].
	^ keywordMap