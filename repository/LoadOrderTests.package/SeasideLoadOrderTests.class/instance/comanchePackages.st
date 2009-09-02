packages
comanchePackages

	^OrderedCollection new
		add: komHttpServer	-> 'DynamicBindings-damiencassou.9.mcz';
		add: komHttpServer	-> 'KomServices-gc.19.mcz';
		add: komHttpServer	-> 'KomHttpServer-damiencassou.47.mcz';
			
		add: seaside30		-> 'Seaside-Adaptors-Comanche-lr.47.mcz';
		add: seaside30		-> 'Seaside-Tests-Adaptors-Comanche-lr.10.mcz';
		yourself.
