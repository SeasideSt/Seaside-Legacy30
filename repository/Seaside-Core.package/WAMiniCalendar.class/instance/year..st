accessing-delegated
year: anIntegerOrString
	year contents: ([anIntegerOrString asInteger] on: Error do: [:error | 1900])