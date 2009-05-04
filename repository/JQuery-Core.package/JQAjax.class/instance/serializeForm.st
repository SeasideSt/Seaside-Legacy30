convenience
serializeForm
	"Serialize the containing form."

	self serialize: ((owner canvas jQuery this closest: 'form') find: ':input')