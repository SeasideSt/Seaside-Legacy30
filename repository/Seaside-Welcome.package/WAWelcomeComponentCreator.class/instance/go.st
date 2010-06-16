running
go
	| componentName component |
	
	[
		[
			componentName := self chooseComponentName.
   			component := self createComponent: componentName.
		
			component isNil
		] whileTrue.

	    	self displayComponent: component named: componentName
	] repeat
	
