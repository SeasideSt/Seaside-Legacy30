testing
testImplementedIsAuthorNameSet
	self shouldnt: [ GRPlatform current seasideIsAuthorNameSet ] raise: Error 
	
	