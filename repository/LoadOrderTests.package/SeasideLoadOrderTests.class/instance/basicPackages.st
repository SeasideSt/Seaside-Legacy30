packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside29 -> 'Seaside-Platform-pmm.72.mcz'
			with: seaside29 -> 'Seaside-Squeak-Platform-pmm.75.mcz'
			with: seaside29 -> 'Seaside-Tests-Platform-pmm.80.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Platform-pmm.18.mcz');
		"Core"
		add: (Array 
			with: seaside29 -> 'Seaside-Core-lr.511.mcz'
			with: seaside29 -> 'Seaside-Tests-Core-pmm.130.mcz'
			with: seaside29 -> 'Seaside-Squeak-Core-lr.78.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Core-pmm.24.mcz');
		"Canvas"
		add: (Array 
			with: seaside29 -> 'Seaside-Canvas-lr.59.mcz'
			with: seaside29 -> 'Seaside-Tests-Canvas-pmm.27.mcz');
		"Session"
		add: (Array 
			with: seaside29 -> 'Seaside-Session-lr.111.mcz'
			with: seaside29 -> 'Seaside-Squeak-Continuation-jf.21.mcz'		"temporary; also in traditionalPackages"
			with: seaside29 -> 'Seaside-Tests-Session-jf.23.mcz');
		"Component"
		add: (Array 
			with: seaside29 -> 'Seaside-Component-jf.65.mcz'
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
			with: seaside29 -> 'Seaside-Tests-Environment-jf.14.mcz');
		yourself.