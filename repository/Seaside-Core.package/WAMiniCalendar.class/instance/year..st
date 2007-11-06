accessing-delegated
year: anIntegerOrString
	| year |
	year := [anIntegerOrString asNumber] on: Error do: [:e | 1900].
	self month: (Month month: self month monthIndex year: year)