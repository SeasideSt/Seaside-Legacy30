packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside30 -> 'Grease-Core-obi.30.mcz'
			with: seaside30 -> 'Grease-Pharo-Core-pmm.13.mcz'
			with: seaside30 -> 'Grease-Tests-Core-pmm.39.mcz'
			with: seaside30 -> 'Grease-Tests-Pharo-Core-lr.6.mcz');
		"Core"
		add: (Array 
			with: seaside30 -> 'Seaside-Core-pmm.626.mcz'
			with: seaside30 -> 'Seaside-Pharo-Core-lr.5.mcz'
			with: seaside30 -> 'Seaside-Tests-Core-lr.187.mcz'
			with: seaside30 -> 'Seaside-Tests-UTF8-lr.8.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Core-lr.8.mcz');
		"Canvas"
		add: (Array 
			with: seaside30 -> 'Seaside-Canvas-lr.94.mcz'
			with: seaside30 -> 'Seaside-Pharo-Canvas-lr.3.mcz'
			with: seaside30 -> 'Seaside-Tests-Canvas-lr.46.mcz');
		"Session"
		add: (Array 
			with: seaside30 -> 'Seaside-Session-jf.130.mcz'
			with: seaside30 -> 'Seaside-Tests-Session-lr.36.mcz');
		"Component"
		add: (Array 
			with: seaside30 -> 'Seaside-Component-lr.82.mcz'
			with: seaside30 -> 'Seaside-Tests-Component-lr.28.mcz');
		"RenderLoop"
		add: (Array 
			with: seaside30 -> 'Seaside-RenderLoop-lr.72.mcz'
			with: seaside30 -> 'Seaside-Tests-RenderLoop-lr.11.mcz');
		"Tools"
		add: (Array
			with: seaside30 -> 'Seaside-Tools-Core-lr.17.mcz');
		"Widgets"
		add: (Array
			with: seaside30 -> 'Seaside-Widgets-lr.16.mcz');
		"Environment"
		add: (Array 
			with: seaside30 -> 'Seaside-Environment-lr.69.mcz'
			with: seaside30 -> 'Seaside-Pharo-Environment-lr.6.mcz'
			with: seaside30 -> 'Seaside-Tests-Environment-lr.22.mcz');
		yourself.