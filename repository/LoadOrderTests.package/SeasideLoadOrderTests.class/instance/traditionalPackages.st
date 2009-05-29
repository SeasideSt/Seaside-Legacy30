packages
traditionalPackages

	^OrderedCollection new
		"Functional Tests"	
		add: (Array 
			with: seaside29 -> 'Seaside-Tests-Functional-lr.78.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Functional-jf.10.mcz');
		"Continuation are also in Basic"
		add: (Array 
			with: seaside29 -> 'Seaside-Squeak-Continuation-jf.21.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Continuation-lr.8.mcz');
		"Flow"
		add: (Array 
			with: seaside29 -> 'Seaside-Flow-lr.14.mcz'
			with: seaside29 -> 'Seaside-Squeak-Flow-lr.9.mcz'
			with: seaside29 -> 'Seaside-Tests-Flow-obi.13.mcz');
		"WebTools"
		add: (Array 
			with: seaside29 -> 'Seaside-Tools-Web-jf.4.mcz'
			with: seaside29 -> 'Seaside-Squeak-Tools-Web-lr.4.mcz'
			with: seaside29 -> 'Seaside-Tests-Tools-Web-lr.2.mcz');
		"Development"
		add: (Array 
			with: seaside29 -> 'Seaside-Development-lr.109.mcz'
			with: seaside29 -> 'Seaside-Squeak-Development-lr.87.mcz'
			with: seaside29 -> 'Seaside-Tests-Development-jf.31.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Development-jf.10.mcz');
		"Examples"
		add: (Array 
			with: seaside29 -> 'Seaside-Examples-lr.12.mcz');
		yourself.