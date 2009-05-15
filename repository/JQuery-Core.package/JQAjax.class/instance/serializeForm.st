convenience
serializeForm
	"Serialize the complete owning form."

	self serialize: ((owner canvas jQuery this closest: 'form') find: ':input')