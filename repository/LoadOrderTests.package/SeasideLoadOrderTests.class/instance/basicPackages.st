packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside29 -> 'Seaside-Platform-jf.77.mcz'
			with: seaside29 -> 'Seaside-Squeak-Platform-pmm.82.mcz'
			with: seaside29 -> 'Seaside-Tests-Platform-pmm.85.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Platform-lr.19.mcz');
		"Core"
		add: (Array 
			with: seaside29 -> 'Seaside-Core-pmm.534.mcz'
			with: seaside29 -> 'Seaside-Tests-Core-pmm.143.mcz'
			with: seaside29 -> 'Seaside-Tests-UTF8-lr.3.mcz'
			with: seaside29 -> 'Seaside-Squeak-Core-lr.78.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Core-jf.28.mcz');
		"Canvas"
		add: (Array 
			with: seaside29 -> 'Seaside-Canvas-jf.63.mcz'
			with: seaside29 -> 'Seaside-Tests-Canvas-pmm.27.mcz');
		"Session"
		add: (Array 
			with: seaside29 -> 'Seaside-Session-jf.112.mcz'
			with: seaside29 -> 'Seaside-Squeak-Continuation-jf.21.mcz'		"temporary; also in traditionalPackages"
			with: seaside29 -> 'Seaside-Tests-Session-jf.25.mcz');
		"Component"
		add: (Array 
			with: seaside29 -> 'Seaside-Component-lr.68.mcz'
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
			with: seaside29 -> 'Seaside-Environment-lr.53.mcz'
			with: seaside29 -> 'Seaside-Tests-Environment-jf.15.mcz');
		yourself.