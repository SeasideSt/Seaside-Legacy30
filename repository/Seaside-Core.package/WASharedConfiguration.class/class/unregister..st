instance-creation
unregister: aConfiguration
	instances remove: aConfiguration ifAbsent: [ nil ]