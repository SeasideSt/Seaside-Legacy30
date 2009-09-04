packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside30 -> 'Seaside-Platform-pmm.78.mcz'
			with: seaside30 -> 'Seaside-Pharo-Platform-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Platform-yann_monclair.87'
			with: seaside30 -> 'Seaside-Tests-Pharo-Platform-jf.2.mcz');
		"Core"
		add: (Array 
			with: seaside30 -> 'Seaside-Core-lr.546.mcz'
			with: seaside30 -> 'Seaside-Tests-Core-JamesFoster.150.mcz'
			with: seaside30 -> 'Seaside-Tests-UTF8-lr.3.mcz'
			with: seaside30 -> 'Seaside-Pharo-Core-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Core-jf.2.mcz');
		"Canvas"
		add: (Array 
			with: seaside30 -> 'Seaside-Canvas-NickAger.66.mcz'
			with: seaside30 -> 'Seaside-Tests-Canvas-NickAger.29.mcz');
		"Session"
		add: (Array 
			with: seaside30 -> 'Seaside-Session-dkh.115.mcz'
			with: seaside30 -> 'Seaside-Tests-Session-pmm.26.mcz');
		"Component"
		add: (Array 
			with: seaside30 -> 'Seaside-Component-lr.70.mcz'
			with: seaside30 -> 'Seaside-Tests-Component-jf.23.mcz');
		"RenderLoop"
		add: (Array 
			with: seaside30 -> 'Seaside-RenderLoop-pmm.64.mcz'
			with: seaside30 -> 'Seaside-Tests-RenderLoop-lr.8.mcz');
		"Tools"
		add: (Array
			with: seaside30 -> 'Seaside-Tools-Core-jf.8.mcz');
		"Widgets"
		add: (Array
			with: seaside30 -> 'Seaside-Widgets-jf.1.mcz');
		"Environment"
		add: (Array 
			with: seaside30 -> 'Seaside-Environment-jf.56.mcz'
			with: seaside30 -> 'Seaside-Pharo-Environment-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Environment-jf.15.mcz');
		yourself.