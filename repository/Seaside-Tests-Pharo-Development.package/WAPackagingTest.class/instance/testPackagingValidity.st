tests
testPackagingValidity
	"if this test fails, it is because the current version of the Metacello configuration for Seaside3.0 doesn't match the current GRPackage specifications"

	Smalltalk
		at: #ConfigurationOfSeaside30
		ifPresent:
			[ :cl | 
			| gr me exceptions grease |
			gr := Dictionary new.
			GRPackage packages do: [ :pkg | gr at: pkg name put: pkg ].
			me := Dictionary new.
			cl project currentVersion packages do: [ :pkg | me at: pkg name put: pkg ].	"the following only apply when the system if fully loaded"
			false
				ifTrue:
					[ exceptions := #('Sport-2' 'DynamicBindings' 'Swazoo-2' 'KomHttpServer' 'KomServices').
					me keys do: [ :key | gr at: key ifAbsent: [ self assert: (exceptions includes: key) ] ].
					exceptions := #('Grease-Core' 'Grease-Tests-Core' 'Grease-Pharo-Core' 'Grease-Tests-Pharo-Core').
					gr keys do: [ :key | me at: key ifAbsent: [ self assert: (exceptions includes: key) ] ] ].
			exceptions := #('Seaside-FileSystem' 'Seaside-Swazoo' 'Seaside-Adaptors-Comanche' 'Seaside-Tools-OmniBrowser' 'Seaside-Tests-Slime').
			grease := #('Seaside-Tests-Core' 'Seaside-Tests-Pharo-Continuation' 'Seaside-Core' 'Seaside-Pharo-Core' 'Seaside-Pharo-Flow' 'Seaside-Pharo-Continuation' 'Seaside-Slime' 'Seaside-GemStone-Flow' 'Seaside-GemStone-Continuation' 'Seaside-Tests-GemStone-Continuation').
			me values
				do:
					[ :pkg | 
					| grPkg |
					grPkg := gr at: pkg name ifAbsent: [  ].
					grPkg notNil
						ifTrue:
							[ | requires dependencies |
							requires := pkg requires.
							dependencies := grPkg dependencies.
							requires size ~= dependencies size
								ifTrue: [ self assert: (exceptions includes: pkg name) ]
								ifFalse:
									[ dependencies
										do:
											[ :grp | 
											(requires includes: grp name)
												ifFalse:
													[ (grease includes: pkg name)
														ifTrue: [ self assert: (grp name beginsWith: 'Grease') ]
														ifFalse: [ self assert: false ] ] ] ] ] ] ]