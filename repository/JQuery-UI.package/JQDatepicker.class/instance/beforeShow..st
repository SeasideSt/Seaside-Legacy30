options
beforeShow: aFunction
	"Can be a function that takes an input field and current datepicker instance and returns a settings (anonymous) object to update the date picker with. It is called just before the datepicker is displayed."

	self optionAt: 'beforeShow' put: aFunction