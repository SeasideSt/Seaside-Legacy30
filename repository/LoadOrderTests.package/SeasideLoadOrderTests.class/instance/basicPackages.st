packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside30 -> 'Grease-Core-jf.23.mcz'
			with: seaside30 -> 'Grease-Pharo-Core-jf.11.mcz'
			with: seaside30 -> 'Grease-Tests-Core-lr.36.mcz'
			with: seaside30 -> 'Grease-Tests-Pharo-Core-jf.5.mcz');
		"Core"
		add: (Array 
			with: seaside30 -> 'Seaside-Core-lr.616.mcz'
			with: seaside30 -> 'Seaside-Pharo-Core-jf.4.mcz'
			with: seaside30 -> 'Seaside-Tests-Core-jf.182.mcz'
			with: seaside30 -> 'Seaside-Tests-UTF8-pmm.7.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Core-dkh.6.mcz');
		"Canvas"
		add: (Array 
			with: seaside30 -> 'Seaside-Canvas-jf.92.mcz'
			with: seaside30 -> 'Seaside-Pharo-Canvas-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Canvas-jf.44.mcz');
		"Session"
		add: (Array 
			with: seaside30 -> 'Seaside-Session-jf.128.mcz'
			with: seaside30 -> 'Seaside-Tests-Session-jf.34.mcz');
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
			with: seaside30 -> 'Seaside-Tools-Core-jf.16.mcz');
		"Widgets"
		add: (Array
			with: seaside30 -> 'Seaside-Widgets-jf.15.mcz');
		"Environment"
		add: (Array 
			with: seaside30 -> 'Seaside-Environment-jf.68.mcz'
			with: seaside30 -> 'Seaside-Pharo-Environment-lr.5.mcz'
			with: seaside30 -> 'Seaside-Tests-Environment-jf.21.mcz');
		yourself.