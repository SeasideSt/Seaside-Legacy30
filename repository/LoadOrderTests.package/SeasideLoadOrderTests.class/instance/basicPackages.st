packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside30 -> 'Grease-Core-pmm.13.mcz'
			with: seaside30 -> 'Grease-Pharo-Core-jf.7.mcz'
			with: seaside30 -> 'Grease-Tests-Core-jf.15.mcz'
			with: seaside30 -> 'Grease-Tests-Pharo-Core-jf.5.mcz');
		"Core"
		add: (Array 
			with: seaside30 -> 'Seaside-Core-obi.600.mcz'
			with: seaside30 -> 'Seaside-Tests-Core-obi.175.mcz'
			with: seaside30 -> 'Seaside-Tests-UTF8-pmm.7.mcz'
			with: seaside30 -> 'Seaside-Pharo-Core-jf.3.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Core-dkh.6.mcz');
		"Canvas"
		add: (Array 
			with: seaside30 -> 'Seaside-Canvas-obi.84.mcz'
			with: seaside30 -> 'Seaside-Pharo-Canvas-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Canvas-obi.42.mcz');
		"Session"
		add: (Array 
			with: seaside30 -> 'Seaside-Session-lr.126.mcz'
			with: seaside30 -> 'Seaside-Tests-Session-jf.33.mcz');
		"Component"
		add: (Array 
			with: seaside30 -> 'Seaside-Component-jf.81.mcz'
			with: seaside30 -> 'Seaside-Tests-Component-lr.27.mcz');
		"RenderLoop"
		add: (Array 
			with: seaside30 -> 'Seaside-RenderLoop-jf.70.mcz'
			with: seaside30 -> 'Seaside-Tests-RenderLoop-lr.10.mcz');
		"Tools"
		add: (Array
			with: seaside30 -> 'Seaside-Tools-Core-jf.13.mcz');
		"Widgets"
		add: (Array
			with: seaside30 -> 'Seaside-Widgets-jf.11.mcz');
		"Environment"
		add: (Array 
			with: seaside30 -> 'Seaside-Environment-lr.66.mcz'
			with: seaside30 -> 'Seaside-Pharo-Environment-lr.5.mcz'
			with: seaside30 -> 'Seaside-Tests-Environment-lr.20.mcz');
		yourself.