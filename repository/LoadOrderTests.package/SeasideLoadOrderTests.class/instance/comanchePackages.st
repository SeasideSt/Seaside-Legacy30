packages
comanchePackages
	|packages|
	packages := OrderedCollection new
		add: komHttpServer	-> 'DynamicBindings-damiencassou.9.mcz';
		add: komHttpServer	-> 'KomServices-gc.19.mcz';
		add: komHttpServer	-> 'KomHttpServer-damiencassou.47.mcz';
			
		add: seaside29		-> 'Seaside-Adaptors-Comanche-lr.40.mcz';
		add: seaside29		-> 'Seaside-Tests-Adaptors-Comanche-jf.9.mcz';
		yourself.
	^packages				