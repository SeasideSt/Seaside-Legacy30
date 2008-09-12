convenience
class: aString if: aBoolean
	"Adds the class aString aString to this element if aBoolean is true,

	Example

	html div
		class: 'important' if: self isImportant;
		with: self message"

	aBoolean
		ifTrue: [self class: aString]