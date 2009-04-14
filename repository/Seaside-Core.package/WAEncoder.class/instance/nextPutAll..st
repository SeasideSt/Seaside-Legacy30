accessing
nextPutAll: aString
	| character value encoded |
	"uses #to:do: for speed reasons (on Squeak)
	this is not premature optimization, this is a hotspot method method
	and #to:do: shows measurable speed improvements for rendering seaside pages"
	1 to: aString size do: [ :index |
		character := aString at: index.
		value := character seasideInteger.
		value < table size
			ifFalse: [ self class encode: character on: stream ]
			ifTrue: [
				encoded := table at: value + 1.
				encoded isString
					ifTrue: [ stream nextPutAll: encoded ]
					ifFalse: [ stream nextPut: encoded ] ] ]