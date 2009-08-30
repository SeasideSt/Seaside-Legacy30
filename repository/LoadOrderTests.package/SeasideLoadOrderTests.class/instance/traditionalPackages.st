packages
traditionalPackages

	^OrderedCollection new
		"Functional Tests"	
		add: (Array 
			with: seaside29 -> 'Seaside-Tests-Functional-lr.84.mcz'
			with: seaside29 -> 'Seaside-Tests-Pharo-Functional-lr.1.mcz');
		"Continuation are also in Basic"
		add: (Array 
			with: seaside29 -> 'Seaside-Pharo-Continuation-lr.1.mcz'
			with: seaside29 -> 'Seaside-Tests-Pharo-Continuation-lr.1.mcz');
		"Flow"
		add: (Array 
			with: seaside29 -> 'Seaside-Flow-lr.15.mcz'
			with: seaside29 -> 'Seaside-Pharo-Flow-lr.1.mcz'
			with: seaside29 -> 'Seaside-Tests-Flow-lr.17.mcz');
		"WebTools"
		add: (Array 
			with: seaside29 -> 'Seaside-Tools-Web-pmm.7.mcz'
			with: seaside29 -> 'Seaside-Pharo-Tools-Web-lr.1.mcz'
			with: seaside29 -> 'Seaside-Tests-Tools-Web-jf.3.mcz');
		"Development"
		add: (Array 
			with: seaside29 -> 'Seaside-Development-lr.109.mcz'
			with: seaside29 -> 'Seaside-Pharo-Development-lr.1.mcz'
			with: seaside29 -> 'Seaside-Tests-Development-jf.31.mcz'
			with: seaside29 -> 'Seaside-Tests-Pharo-Development-lr.1.mcz');
		"Examples"
		add: (Array 
			with: seaside29 -> 'Seaside-Examples-jf.13.mcz'
			with: seaside29 -> 'Seaside-Tests-Examples-jok.3.mcz');
			yourself.