processing
run
	self respond: [ :response | response redirectTo: self url displayString ]