packages
traditionalPackages

	^OrderedCollection new
		"Functional Tests"	
		add: (Array 
			with: seaside30 -> 'Seaside-Tests-Functional-obi.106.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Functional-jf.8.mcz');
		"Continuations"
		add: (Array 
			with: seaside30 -> 'Seaside-Pharo-Continuation-lr.4.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Continuation-lr.5.mcz');
		"Flow"
		add: (Array 
			with: seaside30 -> 'Seaside-Flow-jf.19.mcz'
			with: seaside30 -> 'Seaside-Pharo-Flow-jf.3.mcz'
			with: seaside30 -> 'Seaside-Tests-Flow-jf.22.mcz');
		"WebTools"
		add: (Array 
			with: seaside30 -> 'Seaside-Tools-Web-jok.72.mcz'
			with: seaside30 -> 'Seaside-Pharo-Tools-Web-obi.12.mcz'
			with: seaside30 -> 'Seaside-Tests-Tools-Web-lr.12.mcz');
		"Development"
		add: (Array 
			with: seaside30 -> 'Seaside-Development-obi.127.mcz'
			with: seaside30 -> 'Seaside-Pharo-Development-jf.27.mcz'
			with: seaside30 -> 'Seaside-Tests-Development-lr.33.mcz'
			with: seaside30 -> 'Seaside-Tests-Pharo-Development-jf.6.mcz');
		"Examples"
		add: (Array 
			with: seaside30 -> 'Seaside-Examples-jf.15.mcz'
			with: seaside30 -> 'Seaside-Tests-Examples-lr.7.mcz');
			yourself.