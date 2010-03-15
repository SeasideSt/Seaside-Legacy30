packages
traditionalPackages

	^OrderedCollection new
		"Functional Tests"	
		add: (Array 
			with: seaside30 -> 'Seaside-Tests-Functional-jf.118.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Functional-lr.11.mcz');
		"Continuations"
		add: (Array 
			with: seaside30 -> 'Seaside-Pharo-Continuation-lr.5.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Continuation-lr.6.mcz');
		"Flow"
		add: (Array 
			with: seaside30 -> 'Seaside-Flow-lr.21.mcz'
			with: seaside30 -> 'Seaside-Pharo-Flow-lr.5.mcz'
			with: seaside30 -> 'Seaside-Tests-Flow-lr.25.mcz');
		"WebTools"
		add: (Array 
			with: seaside30 -> 'Seaside-Tools-Web-lr.79.mcz'
			with: seaside30 -> 'Seaside-Pharo-Tools-Web-lr.21.mcz'
			with: seaside30 -> 'Seaside-Tests-Tools-Web-lr.14.mcz');
		"Development"
		add: (Array 
			with: seaside30 -> 'Seaside-Development-lr.133.mcz'
			with: seaside30 -> 'Seaside-Pharo-Development-lr.39.mcz'
			with: seaside30 -> 'Seaside-Tests-Development-lr.34.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Development-lr.9.mcz');
		"Examples"
		add: (Array 
			with: seaside30 -> 'Seaside-Examples-lr.17.mcz'
			with: seaside30 -> 'Seaside-Tests-Examples-lr.8.mcz');
			yourself.