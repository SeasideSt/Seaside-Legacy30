packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside29 -> 'Seaside-Platform-lr.54.mcz'
			with: seaside29 -> 'Seaside-Squeak-Platform-lr.67.mcz'
			with: seaside29 -> 'Seaside-Tests-Platform-lr.61.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Platform-lr.17.mcz');
		"Core"
		add: (Array 
			with: seaside29 -> 'Seaside-Core-lr.497.mcz'
			with: seaside29 -> 'Seaside-Tests-Core-lr.118.mcz'
			with: seaside29 -> 'Seaside-Squeak-Core-jf.76.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Core-pmm.21.mcz');
		"Canvas"
		add: (Array 
			with: seaside29 -> 'Seaside-Canvas-lr.54.mcz'
			with: seaside29 -> 'Seaside-Tests-Canvas-jf.25.mcz');
		"Continuation"
		add: (Array 
			with: seaside29 -> 'Seaside-Squeak-Continuation-jf.19.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Continuation-lr.8.mcz');
		"Session"
		add: (Array 
			with: seaside29 -> 'Seaside-Session-lr.103.mcz'
			with: seaside29 -> 'Seaside-Tests-Session-jf.23.mcz');
		"Component"
		add: (Array 
			with: seaside29 -> 'Seaside-Component-lr.57.mcz'
			with: seaside29 -> 'Seaside-Tests-Component-jf.21.mcz');
		"RenderLoop"
		add: (Array 
			with: seaside29 -> 'Seaside-RenderLoop-jf.59.mcz'
			with: seaside29 -> 'Seaside-Tests-RenderLoop-jf.7.mcz');
		"Environment"
		add: (Array 
			with: seaside29 -> 'Seaside-Environment-lr.48.mcz'
			with: seaside29 -> 'Seaside-Tests-Environment-jf.13.mcz');
		yourself.