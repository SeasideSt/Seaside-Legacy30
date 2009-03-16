convenience
serializeThisWithHidden
	"Serialize the receiving form element and a following hidden form element. This is required in case of a check-box or multi-select list."
	
	self serialize: (owner canvas jQuery this
		next: 'input:hidden';
		andSelf)