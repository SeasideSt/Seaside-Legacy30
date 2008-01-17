private
printOn: aStream
	self do: [ :each | aStream nextPut: (Character value: each) ]