packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside29 -> 'Seaside-Platform-jf.51.mcz'
			with: seaside29 -> 'Seaside-Squeak-Platform-jf.61.mcz'
			with: seaside29 -> 'Seaside-Tests-Platform-lr.57.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Platform-lr.17.mcz');
		"Core"
		add: (Array 
			with: seaside29 -> 'Seaside-Core-lr.474.mcz'
			with: seaside29 -> 'Seaside-Tests-Core-lr.102.mcz'
			with: seaside29 -> 'Seaside-Squeak-Core-jf.76.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Core-pmm.17.mcz');
		"Canvas"
		add: (Array 
			with: seaside29 -> 'Seaside-Canvas-jf.47.mcz'
			with: seaside29 -> 'Seaside-Tests-Canvas-jf.22.mcz');
		"Continuation"
		add: (Array 
			with: seaside29 -> 'Seaside-Squeak-Continuation-jf.19.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Continuation-lr.7.mcz');
		"Session"
		add: (Array 
			with: seaside29 -> 'Seaside-Session-lr.100.mcz'
			with: seaside29 -> 'Seaside-Tests-Session-lr.21.mcz');
		"Component"
		add: (Array 
			with: seaside29 -> 'Seaside-Component-jf.53.mcz'
			with: seaside29 -> 'Seaside-Tests-Component-jf.21.mcz');
		"RenderLoop"
		add: (Array 
			with: seaside29 -> 'Seaside-RenderLoop-jf.53.mcz'
			with: seaside29 -> 'Seaside-Tests-RenderLoop-jf.7.mcz');
		"Environment"
		add: (Array 
			with: seaside29 -> 'Seaside-Environment-jf.47.mcz'
			with: seaside29 -> 'Seaside-Tests-Environment-jf.11.mcz');
		yourself.