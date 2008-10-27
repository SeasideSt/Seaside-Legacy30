options
selectFirst: aBoolean
	"If this is set to true, the first autocomplete value will be automatically selected on tab/return, even if it has not been handpicked by keyboard or mouse action. If there is a handpicked (highlighted) result, that result will take precedence."

	self optionAt: 'selectFirst' put: aBoolean