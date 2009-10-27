packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside30 -> 'Grease-Core-lr.5.mcz'
			with: seaside30 -> 'Grease-Pharo-Core-jf.1.mcz'
			with: seaside30 -> 'Grease-Tests-Core-jf.1.mcz'
			with: seaside30 -> 'Grease-Tests-Pharo-Core-jf.1.mcz');
		"Core"
		add: (Array 
			with: seaside30 -> 'Seaside-Core-jf.579.mcz'
			with: seaside30 -> 'Seaside-Tests-Core-mls.160.mcz'
			with: seaside30 -> 'Seaside-Tests-UTF8-jf.5.mcz'
			with: seaside30 -> 'Seaside-Pharo-Core-jf.3.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Core-jf.3.mcz');
		"Canvas"
		add: (Array 
			with: seaside30 -> 'Seaside-Canvas-obi.73.mcz'
			with: seaside30 -> 'Seaside-Tests-Canvas-jf.37.mcz');
		"Session"
		add: (Array 
			with: seaside30 -> 'Seaside-Session-jf.122.mcz'
			with: seaside30 -> 'Seaside-Tests-Session-jf.32.mcz');
		"Component"
		add: (Array 
			with: seaside30 -> 'Seaside-Component-lr.79.mcz'
			with: seaside30 -> 'Seaside-Tests-Component-lr.26.mcz');
		"RenderLoop"
		add: (Array 
			with: seaside30 -> 'Seaside-RenderLoop-jf.68.mcz'
			with: seaside30 -> 'Seaside-Tests-RenderLoop-jf.9.mcz');
		"Tools"
		add: (Array
			with: seaside30 -> 'Seaside-Tools-Core-jf.12.mcz');
		"Widgets"
		add: (Array
			with: seaside30 -> 'Seaside-Widgets-jf.5.mcz');
		"Environment"
		add: (Array 
			with: seaside30 -> 'Seaside-Environment-jf.61.mcz'
			with: seaside30 -> 'Seaside-Pharo-Environment-jf.4.mcz'
			with: seaside30 -> 'Seaside-Tests-Environment-jf.18.mcz');
		yourself.