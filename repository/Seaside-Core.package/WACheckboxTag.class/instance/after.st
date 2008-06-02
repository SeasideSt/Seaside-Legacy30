private
after
	self isDisabled ifTrue: [
		"do not call the original callback"
		^self ].
	
	"this is were the magic happens if the user checked the tag, an earlier callback was executed that set value to true"
	canvas hiddenInput callback: [
		callback value: value.
		value := false ]