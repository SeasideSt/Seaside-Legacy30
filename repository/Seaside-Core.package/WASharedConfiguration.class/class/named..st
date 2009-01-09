instance-creation
named: aString
	"Answer a shared configuration with the given name aString or answer a newly created one."
	
	^ self named: aString ifNew: [ :config | ]