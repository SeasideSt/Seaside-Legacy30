callbacks
callback: aBlock
	aBlock fixCallbackTemps.
	super callback: [ :file | aBlock value: (file = '' ifFalse: [ file ]) ]