packages
traditionalPackages

	^OrderedCollection new
		"Functional Tests"	
		add: (Array 
			with: seaside29 -> 'Seaside-Tests-Functional-lr.63.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Functional-jf.10.mcz');
		"Continuation are temporarily in Basic"

		"Flow"
		add: (Array 
			with: seaside29 -> 'Seaside-Flow-jf.12.mcz'
			with: seaside29 -> 'Seaside-Squeak-Flow-jf.8.mcz'
			with: seaside29 -> 'Seaside-Tests-Flow-jf.11.mcz');
		"WebTools"
		add: (Array 
			with: seaside29 -> 'Seaside-WebTools-jf.19.mcz'
			with: seaside29 -> 'Seaside-Squeak-WebTools-jf.16.mcz'
			with: seaside29 -> 'Seaside-Tests-WebTools-lr.5.mcz');
		"Development"
		add: (Array 
			with: seaside29 -> 'Seaside-Development-jf.94.mcz'
			with: seaside29 -> 'Seaside-Squeak-Development-jf.80.mcz'
			with: seaside29 -> 'Seaside-Tests-Development-jf.26.mcz'
			with: seaside29 -> 'Seaside-Tests-Squeak-Development-jf.9.mcz');
		"Examples"
		add: (Array 
			with: seaside29 -> 'Seaside-Examples-pmm.11.mcz');
		yourself.