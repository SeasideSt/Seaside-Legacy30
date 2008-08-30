accessing
description
	^ [ self rootClass description ]
		on: WAAttributeNotFound
		do: [ :err | String new ]