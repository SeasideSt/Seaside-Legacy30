convenience
serializeForm
	"Serialize the containing form."

	self serialize: (owner canvas jQuery this find: ':input')