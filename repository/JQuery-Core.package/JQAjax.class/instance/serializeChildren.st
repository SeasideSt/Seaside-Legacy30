convenience
serializeChildren
	"Serialize all containing input fields."

	self serialize: (owner canvas jQuery this find: ':input')