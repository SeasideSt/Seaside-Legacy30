packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside29 -> 'Seaside-Platform-jf.59.mcz'
			with: seaside29 -> 'Seaside-Squeak-Platform-jf.69.mcz'
			with: seaside29 -> 'Seaside-Tests-Platform-lr.66.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Platform-lr.17.mcz');
		"Core"
		add: (Array 
			with: seaside29 -> 'Seaside-Core-jf.506.mcz'
			with: seaside29 -> 'Seaside-Tests-Core-jf.122.mcz'
			with: seaside29 -> 'Seaside-Squeak-Core-jf.77.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Core-pmm.21.mcz');
		"Canvas"
		add: (Array 
			with: seaside29 -> 'Seaside-Canvas-jf.57.mcz'
			with: seaside29 -> 'Seaside-Tests-Canvas-jf.26.mcz');
		"Session"
		add: (Array 
			with: seaside29 -> 'Seaside-Session-lr.110.mcz'
			with: seaside29 -> 'Seaside-Squeak-Continuation-jf.19.mcz'		"temporary; also in traditionalPackages"
			with: seaside29 -> 'Seaside-Tests-Session-jf.23.mcz');
		"Component"
		add: (Array 
			with: seaside29 -> 'Seaside-Component-lr.61.mcz'
			with: seaside29 -> 'Seaside-Tests-Component-lr.22.mcz');
		"RenderLoop"
		add: (Array 
			with: seaside29 -> 'Seaside-RenderLoop-lr.63.mcz'
			with: seaside29 -> 'Seaside-Tests-RenderLoop-lr.8.mcz');
		"Tools"
		add: (Array
			with: seaside29 -> 'Seaside-Tools-Core-jf.4.mcz');
		"Environment"
		add: (Array 
			with: seaside29 -> 'Seaside-Environment-jf.52.mcz'
			with: seaside29 -> 'Seaside-Tests-Environment-jf.14.mcz');
		yourself.