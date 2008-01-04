modifying
update: anObject
	"Replaces the content of element with the provided newContent argument and returns element."

	self call: 'update' argument: (self render: anObject)