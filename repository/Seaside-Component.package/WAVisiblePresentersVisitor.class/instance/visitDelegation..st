visiting
visitDelegation: aDelegation
	"HACK HACK We don't call super because we don't want our #next to get a chance"
	self visitPresenter: aDelegation.
	aDelegation delegate acceptDecorated: self