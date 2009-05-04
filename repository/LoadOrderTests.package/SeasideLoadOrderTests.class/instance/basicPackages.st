packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside29 -> 'Seaside-Platform-lr.61.mcz'
			with: seaside29 -> 'Seaside-Squeak-Platform-lr.73.mcz'
			with: seaside29 -> 'Seaside-Tests-Platform-lr.75.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Platform-pmm.18.mcz');
		"Core"
		add: (Array 
			with: seaside29 -> 'Seaside-Core-lr.510.mcz'
			with: seaside29 -> 'Seaside-Tests-Core-lr.124.mcz'
			with: seaside29 -> 'Seaside-Squeak-Core-lr.78.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Core-pmm.22.mcz');
		"Canvas"
		add: (Array 
			with: seaside29 -> 'Seaside-Canvas-lr.58.mcz'
			with: seaside29 -> 'Seaside-Tests-Canvas-jf.26.mcz');
		"Session"
		add: (Array 
			with: seaside29 -> 'Seaside-Session-lr.110.mcz'
			with: seaside29 -> 'Seaside-Squeak-Continuation-jf.21.mcz'		"temporary; also in traditionalPackages"
			with: seaside29 -> 'Seaside-Tests-Session-jf.23.mcz');
		"Component"
		add: (Array 
			with: seaside29 -> 'Seaside-Component-lr.62.mcz'
			with: seaside29 -> 'Seaside-Tests-Component-lr.22.mcz');
		"RenderLoop"
		add: (Array 
			with: seaside29 -> 'Seaside-RenderLoop-lr.63.mcz'
			with: seaside29 -> 'Seaside-Tests-RenderLoop-lr.8.mcz');
		"Tools"
		add: (Array
			with: seaside29 -> 'Seaside-Tools-Core-jgf.7.mcz');
		"Environment"
		add: (Array 
			with: seaside29 -> 'Seaside-Environment-jf.52.mcz'
			with: seaside29 -> 'Seaside-Tests-Environment-jf.14.mcz');
		yourself.