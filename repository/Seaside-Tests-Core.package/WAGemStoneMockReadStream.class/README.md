A WAGemStoneMockReadStream is a minimal read stream on a String that behaves like a ReadStream on GemStone. It throws an exception for #next if the receiver is at the end.

Instance Variables
	position:		<Integer>
	string:		<String>

position
	- the index from which the next element will be read

string
	- the string the receiver reads from
