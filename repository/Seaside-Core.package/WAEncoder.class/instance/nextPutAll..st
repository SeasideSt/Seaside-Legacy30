accessing
nextPutAll: aString 
	"uses #to:do: for speed reasons (on Pharo)
	this is not premature optimization, this is a hotspot method method
	and #to:do: shows measurable speed improvements for rendering seaside pages"
	1 to: aString size do: [ :index |
		| character value encoded |
		character := aString at: index.
		value := character greaseInteger.
		value < table size 
			ifFalse: [
				self class 
					encode: character
					on: stream ]
			ifTrue: [
				encoded := table at: value + 1.
				encoded isString 
					ifTrue: [ stream nextPutAll: encoded ]
					ifFalse: [ stream nextPut: encoded ] ] ]