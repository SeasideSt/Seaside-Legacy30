accessing
possibleCauses
	^ #(
		'The Task has an empty #go method.'
		'The Task does not call another Component in its #go method.'
		'The #go method is written to depend on the looping execution of Tasks. If looping behaviour is needed by he Task before calling a Component, the loop should be implemented within the #go method.'
	)