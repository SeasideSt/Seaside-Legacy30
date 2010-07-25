private
cleanEnvironment
	Smalltalk globals at: #WAWelcomeTestTemp ifPresent: [ :testClass | testClass removeFromSystem]