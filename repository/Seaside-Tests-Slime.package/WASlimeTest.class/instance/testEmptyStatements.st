testing-block
testEmptyStatements
	self 
		run: WAEmptyStatementsRule new
		selectors: #(emptyStatement1 emptyStatement2 emptyStatement3 emptyStatement4)