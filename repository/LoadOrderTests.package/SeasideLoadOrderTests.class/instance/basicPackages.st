packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside30 -> 'Grease-Core-dkh.8.mcz'
			with: seaside30 -> 'Grease-Pharo-Core-dkh.4.mcz'
			with: seaside30 -> 'Grease-Tests-Core-jf.7.mcz'
			with: seaside30 -> 'Grease-Tests-Pharo-Core-dkh.2.mcz');
		"Core"
		add: (Array 
			with: seaside30 -> 'Seaside-Core-dkh.590.mcz'
			with: seaside30 -> 'Seaside-Tests-Core-jf.167.mcz'
			with: seaside30 -> 'Seaside-Tests-UTF8-pmm.7.mcz'
			with: seaside30 -> 'Seaside-Pharo-Core-jf.3.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Core-dkh.6.mcz');
		"Canvas"
		add: (Array 
			with: seaside30 -> 'Seaside-Canvas-pmm.74.mcz'
			with: seaside30 -> 'Seaside-Pharo-Canvas-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Canvas-jf.40.mcz');
		"Session"
		add: (Array 
			with: seaside30 -> 'Seaside-Session-dkh.125.mcz'
			with: seaside30 -> 'Seaside-Tests-Session-jf.33.mcz');
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
			with: seaside30 -> 'Seaside-Widgets-dkh.7.mcz');
		"Environment"
		add: (Array 
			with: seaside30 -> 'Seaside-Environment-lr.65.mcz'
			with: seaside30 -> 'Seaside-Pharo-Environment-jf.4.mcz'
			with: seaside30 -> 'Seaside-Tests-Environment-jf.19.mcz');
		yourself.