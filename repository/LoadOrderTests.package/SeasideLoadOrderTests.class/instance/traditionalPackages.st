packages
traditionalPackages

	^OrderedCollection new
		"Functional Tests"	
		add: (Array 
			with: seaside29 -> 'Seaside-Tests-Functional-jf.57.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Functional-jf.9.mcz');
		"Continuation are temporarily in Basic"

		"Flow"
		add: (Array 
			with: seaside29 -> 'Seaside-Flow-jf.9.mcz'
			with: seaside29 -> 'Seaside-Squeak-Flow-jf.8.mcz'
			with: seaside29 -> 'Seaside-Tests-Flow-jf.10.mcz');
		"WebTools"
		add: (Array 
			with: seaside29 -> 'Seaside-WebTools-jf.13.mcz'
			with: seaside29 -> 'Seaside-Squeak-WebTools-obi.12.mcz'
			with: seaside29 -> 'Seaside-Tests-WebTools-lr.4.mcz');
		"Development"
		add: (Array 
			with: seaside29 -> 'Seaside-Development-jf.88.mcz'
			with: seaside29 -> 'Seaside-Squeak-Development-lr.72.mcz'
			with: seaside29 -> 'Seaside-Tests-Development-jf.25.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Development-jf.9.mcz');
		"Examples"
		add: (Array 
			with: seaside29 -> 'Seaside-Examples-jf.10.mcz');
		yourself.