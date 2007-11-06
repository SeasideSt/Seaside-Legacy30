private
printOn: stream
	self do: [:i | stream nextPut: (Character value: i)]