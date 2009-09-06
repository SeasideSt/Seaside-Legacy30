packages
traditionalPackages

	^OrderedCollection new
		"Functional Tests"	
		add: (Array 
			with: seaside30 -> 'Seaside-Tests-Functional-pmm.86.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Functional-pmm.3.mcz');
		"Continuations"
		add: (Array 
			with: seaside30 -> 'Seaside-Pharo-Continuation-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Continuation-jf.2.mcz');
		"Flow"
		add: (Array 
			with: seaside30 -> 'Seaside-Flow-lr.15.mcz'
			with: seaside30 -> 'Seaside-Pharo-Flow-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Flow-dkh.18.mcz');
		"WebTools"
		add: (Array 
			with: seaside30 -> 'Seaside-Tools-Web-pmm.12.mcz'
			with: seaside30 -> 'Seaside-Pharo-Tools-Web-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Tools-Web-pmm.7.mcz');
		"Development"
		add: (Array 
			with: seaside30 -> 'Seaside-Development-lr.111.mcz'
			with: seaside30 -> 'Seaside-Pharo-Development-jf.5.mcz'
			with: seaside30 -> 'Seaside-Tests-Development-jf.31.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Development-jf.2.mcz');
		"Examples"
		add: (Array 
			with: seaside30 -> 'Seaside-Examples-jf.13.mcz'
			with: seaside30 -> 'Seaside-Tests-Examples-pmm.4.mcz');
			yourself.