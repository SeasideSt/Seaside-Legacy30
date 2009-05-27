packages
comanchePackages
	|packages|
	packages := OrderedCollection new
						add: komHttpServer	-> 'DynamicBindings-gc.7.mcz';
						add: komHttpServer	-> 'KomServices-gc.19.mcz';
						add: komHttpServer	-> 'KomHttpServer-rjl.43.mcz';
						add: seaside29		-> 'Seaside-Adaptors-Comanche-lr.40.mcz';
						add: seaside29		-> 'Seaside-Tests-Adaptors-Comanche-jf.9.mcz';
						yourself.
						
	"Pharo requires a newer comanche with support for closures"					
	(Smalltalk version beginsWith: 'Pharo') ifTrue: [
		packages at: 1 put: komHttpServer	-> 'DynamicBindings-damiencassou.9.mcz';
				  at: 3 put: komHttpServer	-> 'KomHttpServer-damiencassou.47.mcz'
	].
	^packages				