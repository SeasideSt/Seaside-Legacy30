testing-parsetree
testSequencedAsynchronousCalls
	self 
		run: WASequencedAsynchronousCallsRule new
		selectors: #(renderSequencedAsynchronousCalls1On: renderSequencedAsynchronousCalls2On:)