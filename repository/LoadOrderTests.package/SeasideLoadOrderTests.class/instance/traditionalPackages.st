packages
traditionalPackages

	^OrderedCollection new
		"Functional Tests"	
		add: (Array 
			with: seaside30 -> 'Seaside-Tests-Functional-pmm.86.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Functional-jf.2.mcz');
		"Continuations"
		add: (Array 
			with: seaside30 -> 'Seaside-Pharo-Continuation-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Continuation-jf.2.mcz');
		"Flow"
		add: (Array 
			with: seaside30 -> 'Seaside-Flow-lr.15.mcz'
			with: seaside30 -> 'Seaside-Pharo-Flow-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Flow-lr.17.mcz');
		"WebTools"
		add: (Array 
			with: seaside30 -> 'Seaside-Tools-Web-pmm.10.mcz'
			with: seaside30 -> 'Seaside-Pharo-Tools-Web-jf.2.mcz'
			with: seaside30 -> 'Seaside-Tests-Tools-Web-pmm.4.mcz');
		"Development"
		add: (Array 
			with: seaside30 -> 'Seaside-Development-lr.110.mcz'
			with: seaside30 -> 'Seaside-Pharo-Development-jf.3.mcz'
			with: seaside30 -> 'Seaside-Tests-Development-jf.31.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Development-jf.2.mcz');
		"Examples"
		add: (Array 
			with: seaside30 -> 'Seaside-Examples-jf.13.mcz'
			with: seaside30 -> 'Seaside-Tests-Examples-jok.3.mcz');
			yourself.