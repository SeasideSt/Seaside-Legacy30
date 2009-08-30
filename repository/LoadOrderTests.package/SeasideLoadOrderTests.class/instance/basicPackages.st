packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside29 -> 'Seaside-Platform-jf.77.mcz'
			with: seaside29 -> 'Seaside-Pharo-Platform-lr.1.mcz'
			with: seaside29 -> 'Seaside-Tests-Platform-pmm.85.mcz'
			with: seaside29 -> 'Seaside-Tests-Pharo-Platform-lr.1.mcz');
		"Core"
		add: (Array 
			with: seaside29 -> 'Seaside-Core-pmm.534.mcz'
			with: seaside29 -> 'Seaside-Tests-Core-pmm.143.mcz'
			with: seaside29 -> 'Seaside-Tests-UTF8-lr.3.mcz'
			with: seaside29 -> 'Seaside-Pharo-Core-lr.1.mcz'
			with: seaside29 -> 'Seaside-Tests-Pharo-Core-lr.1.mcz');
		"Canvas"
		add: (Array 
			with: seaside29 -> 'Seaside-Canvas-pmm.64.mcz'
			with: seaside29 -> 'Seaside-Tests-Canvas-pmm.28.mcz');
		"Session"
		add: (Array 
			with: seaside29 -> 'Seaside-Session-pmm.113.mcz'
			with: seaside29 -> 'Seaside-Pharo-Continuation-lr.1.mcz'		"temporary; also in traditionalPackages"
			with: seaside29 -> 'Seaside-Tests-Session-jf.25.mcz');
		"Component"
		add: (Array 
			with: seaside29 -> 'Seaside-Component-lr.68.mcz'
			with: seaside29 -> 'Seaside-Tests-Component-lr.22.mcz');
		"RenderLoop"
		add: (Array 
			with: seaside29 -> 'Seaside-RenderLoop-pmm.64.mcz'
			with: seaside29 -> 'Seaside-Tests-RenderLoop-lr.8.mcz');
		"Tools"
		add: (Array
			with: seaside29 -> 'Seaside-Tools-Core-jgf.7.mcz');
		"Environment"
		add: (Array 
			with: seaside29 -> 'Seaside-Environment-lr.53.mcz'
			with: seaside29 -> 'Seaside-Pharo-Environment-lr.1.mcz'
			with: seaside29 -> 'Seaside-Tests-Environment-jf.15.mcz');
		yourself.