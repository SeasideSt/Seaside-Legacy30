options-generated
position: aStringOrArray
	"Specifies where the dialog should be displayed. Possible values: <br>1) a single string representing position within viewport: 'center', 'left', 'right', 'top', 'bottom'. <br>2) an array containing an <em>x,y</em> coordinate pair in pixel offset from left, top corner of viewport (e.g. [350,100]) <br>3) an array containing <em>x,y</em> position string values (e.g. ['right','top'] for top right corner)."

	self optionAt: 'position' put: aStringOrArray