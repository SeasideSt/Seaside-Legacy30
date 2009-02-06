packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside29 -> 'Seaside-Platform-jf.47.mcz'
			with: seaside29 -> 'Seaside-Squeak-Platform-jf.52.mcz'
			with: seaside29 -> 'Seaside-Tests-Platform-jf.56.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Platform-jf.15.mcz');
		"Core"
		add: (Array 
			with: seaside29 -> 'Seaside-Core-jf.454.mcz'
			with: seaside29 -> 'Seaside-Tests-Core-jgf.94.mcz'
			with: seaside29 -> 'Seaside-Squeak-Core-jgf.75.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Core-jgf.12.mcz');
		"Canvas"
		add: (Array 
			with: seaside29 -> 'Seaside-Canvas-jf.44.mcz'
			with: seaside29 -> 'Seaside-Tests-Canvas-lr.21.mcz');
		"Continuation"
		add: (Array 
			with: seaside29 -> 'Seaside-Squeak-Continuation-jf.18.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Continuation-lr.5.mcz');
		"Session"
		add: (Array 
			with: seaside29 -> 'Seaside-Session-jf.98.mcz'
			with: seaside29 -> 'Seaside-Tests-Session-lr.21.mcz');
		"Component"
		add: (Array 
			with: seaside29 -> 'Seaside-Component-lr.47.mcz'
			with: seaside29 -> 'Seaside-Tests-Component-lr.20.mcz');
		"RenderLoop"
		add: (Array 
			with: seaside29 -> 'Seaside-RenderLoop-jf.52.mcz'
			with: seaside29 -> 'Seaside-Tests-RenderLoop-jf.7.mcz');
		"Environment"
		add: (Array 
			with: seaside29 -> 'Seaside-Environment-jf.46.mcz'
			with: seaside29 -> 'Seaside-Tests-Environment-jf.11.mcz');
		yourself.