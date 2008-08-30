rendering
renderEvaluatorOn: aScript
	aScript selector
		add: selector;
		do: [ :each | each effect highlight ]