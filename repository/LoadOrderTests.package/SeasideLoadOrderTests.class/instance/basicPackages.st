packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside29 -> 'Seaside-Platform-lr.50.mcz'
			with: seaside29 -> 'Seaside-Squeak-Platform-lr.59.mcz'
			with: seaside29 -> 'Seaside-Tests-Platform-jf.56.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Platform-lr.17.mcz');
		"Core"
		add: (Array 
			with: seaside29 -> 'Seaside-Core-jf.463.mcz'
			with: seaside29 -> 'Seaside-Tests-Core-lr.100.mcz'
			with: seaside29 -> 'Seaside-Squeak-Core-jgf.75.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Core-lr.15.mcz');
		"Canvas"
		add: (Array 
			with: seaside29 -> 'Seaside-Canvas-lr.45.mcz'
			with: seaside29 -> 'Seaside-Tests-Canvas-lr.21.mcz');
		"Continuation"
		add: (Array 
			with: seaside29 -> 'Seaside-Squeak-Continuation-jf.19.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Continuation-jf.6.mcz');
		"Session"
		add: (Array 
			with: seaside29 -> 'Seaside-Session-jf.99.mcz'
			with: seaside29 -> 'Seaside-Tests-Session-lr.21.mcz');
		"Component"
		add: (Array 
			with: seaside29 -> 'Seaside-Component-jf.50.mcz'
			with: seaside29 -> 'Seaside-Tests-Component-lr.20.mcz');
		"RenderLoop"
		add: (Array 
			with: seaside29 -> 'Seaside-RenderLoop-jf.53.mcz'
			with: seaside29 -> 'Seaside-Tests-RenderLoop-jf.7.mcz');
		"Environment"
		add: (Array 
			with: seaside29 -> 'Seaside-Environment-jf.46.mcz'
			with: seaside29 -> 'Seaside-Tests-Environment-jf.11.mcz');
		yourself.