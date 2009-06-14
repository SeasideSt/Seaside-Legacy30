options-generated
bgiframe: aBoolean
	"When true, the bgiframe plugin will be used, to fix the issue in IE6 where select boxes show on top of other elements, regardless of zIndex. Requires including the bgiframe plugin. Future versions may not require a separate plugin."

	self optionAt: 'bgiframe' put: aBoolean