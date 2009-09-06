packages
basicPackages

	^OrderedCollection new
		"Platform"
		add: (Array 
			with: seaside30 -> 'Seaside-Platform-lr.79.mcz'
			with: seaside30 -> 'Seaside-Pharo-Platform-dkh.3.mcz'
			with: seaside30 -> 'Seaside-Tests-Platform-dkh.89.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Platform-jf.2.mcz');
		"Core"
		add: (Array 
			with: seaside30 -> 'Seaside-Core-pmm.553.mcz'
			with: seaside30 -> 'Seaside-Tests-Core-pmm.152.mcz'
			with: seaside30 -> 'Seaside-Tests-UTF8-lr.3.mcz'
			with: seaside30 -> 'Seaside-Pharo-Core-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Core-jf.2.mcz');
		"Canvas"
		add: (Array 
			with: seaside30 -> 'Seaside-Canvas-yann_monclair.67.mcz'
			with: seaside30 -> 'Seaside-Tests-Canvas-yann_monclair.30.mcz');
		"Session"
		add: (Array 
			with: seaside30 -> 'Seaside-Session-dkh.116.mcz'
			with: seaside30 -> 'Seaside-Tests-Session-pmm.27.mcz');
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
			with: seaside30 -> 'Seaside-Tools-Core-pmm.10.mcz');
		"Widgets"
		add: (Array
			with: seaside30 -> 'Seaside-Widgets-jf.1.mcz');
		"Environment"
		add: (Array 
			with: seaside30 -> 'Seaside-Environment-pmm.58.mcz'
			with: seaside30 -> 'Seaside-Pharo-Environment-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Environment-pmm.16.mcz');
		yourself.