private
callcc: aBlock
	^ WAPartialContinuation marker: self marker do: aBlock