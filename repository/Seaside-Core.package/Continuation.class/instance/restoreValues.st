private
restoreValues
	| valueStream context |
	valueStream := values readStream.
	[valueStream atEnd] whileFalse:
		[context := valueStream next.
		1 to: context class instSize do: [:i | context instVarAt: i put: valueStream next].
		1 to: context localSize do: [:i | context localAt: i put: valueStream next]]