packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside30 -> 'Seaside-Platform-pmm.78.mcz'
			with: seaside30 -> 'Seaside-Pharo-Platform-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Platform-pmm.86.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Platform-jf.2.mcz');
		"Core"
		add: (Array 
			with: seaside30 -> 'Seaside-Core-pmm.539.mcz'
			with: seaside30 -> 'Seaside-Tests-Core-jf.148.mcz'
			with: seaside30 -> 'Seaside-Tests-UTF8-lr.3.mcz'
			with: seaside30 -> 'Seaside-Pharo-Core-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Core-jf.2.mcz');
		"Canvas"
		add: (Array 
			with: seaside30 -> 'Seaside-Canvas-pmm.64.mcz'
			with: seaside30 -> 'Seaside-Tests-Canvas-pmm.28.mcz');
		"Session"
		add: (Array 
			with: seaside30 -> 'Seaside-Session-pmm.114.mcz'
			with: seaside30 -> 'Seaside-Tests-Session-pmm.26.mcz');
		"Component"
		add: (Array 
			with: seaside30 -> 'Seaside-Component-jf.69.mcz'
			with: seaside30 -> 'Seaside-Tests-Component-lr.22.mcz');
		"RenderLoop"
		add: (Array 
			with: seaside30 -> 'Seaside-RenderLoop-pmm.64.mcz'
			with: seaside30 -> 'Seaside-Tests-RenderLoop-lr.8.mcz');
		"Tools"
		add: (Array
			with: seaside30 -> 'Seaside-Tools-Core-jf.8.mcz');
		"??"
		add: (Array
			with: seaside30 -> 'Seaside-SwineFoo-jf.1.mcz');
		"Environment"
		add: (Array 
			with: seaside30 -> 'Seaside-Environment-jf.55.mcz'
			with: seaside30 -> 'Seaside-Pharo-Environment-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Environment-jf.15.mcz');
		yourself.