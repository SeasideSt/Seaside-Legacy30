packages
traditionalPackages

	^OrderedCollection new
		"Functional Tests"	
		add: (Array 
			with: seaside30 -> 'Seaside-Tests-Functional-jf.116.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Functional-jf.10.mcz');
		"Continuations"
		add: (Array 
			with: seaside30 -> 'Seaside-Pharo-Continuation-lr.4.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Continuation-lr.5.mcz');
		"Flow"
		add: (Array 
			with: seaside30 -> 'Seaside-Flow-jf.20.mcz'
			with: seaside30 -> 'Seaside-Pharo-Flow-jf.4.mcz'
			with: seaside30 -> 'Seaside-Tests-Flow-jf.24.mcz');
		"WebTools"
		add: (Array 
			with: seaside30 -> 'Seaside-Tools-Web-lr.76.mcz'
			with: seaside30 -> 'Seaside-Pharo-Tools-Web-jf.18.mcz'
			with: seaside30 -> 'Seaside-Tests-Tools-Web-lr.13.mcz');
		"Development"
		add: (Array 
			with: seaside30 -> 'Seaside-Development-jf.130.mcz'
			with: seaside30 -> 'Seaside-Pharo-Development-lr.31.mcz'
			with: seaside30 -> 'Seaside-Tests-Development-lr.33.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Development-jf.8.mcz');
		"Examples"
		add: (Array 
			with: seaside30 -> 'Seaside-Examples-jf.16.mcz'
			with: seaside30 -> 'Seaside-Tests-Examples-lr.7.mcz');
			yourself.