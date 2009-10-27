packages
traditionalPackages

	^OrderedCollection new
		"Functional Tests"	
		add: (Array 
			with: seaside30 -> 'Seaside-Tests-Functional-jf.90.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Functional-jf.5.mcz');
		"Continuations"
		add: (Array 
			with: seaside30 -> 'Seaside-Pharo-Continuation-lr.4.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Continuation-lr.4.mcz');
		"Flow"
		add: (Array 
			with: seaside30 -> 'Seaside-Flow-jf.16.mcz'
			with: seaside30 -> 'Seaside-Pharo-Flow-jf.3.mcz'
			with: seaside30 -> 'Seaside-Tests-Flow-jf.20.mcz');
		"WebTools"
		add: (Array 
			with: seaside30 -> 'Seaside-Tools-Web-lr.50.mcz'
			with: seaside30 -> 'Seaside-Pharo-Tools-Web-jf.6.mcz'
			with: seaside30 -> 'Seaside-Tests-Tools-Web-lr.10.mcz');
		"Development"
		add: (Array 
			with: seaside30 -> 'Seaside-Development-lr.120.mcz'
			with: seaside30 -> 'Seaside-Pharo-Development-jf.20.mcz'
			with: seaside30 -> 'Seaside-Tests-Development-jf.32.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Development-jf.3.mcz');
		"Examples"
		add: (Array 
			with: seaside30 -> 'Seaside-Examples-jf.15.mcz'
			with: seaside30 -> 'Seaside-Tests-Examples-jf.5.mcz');
			yourself.