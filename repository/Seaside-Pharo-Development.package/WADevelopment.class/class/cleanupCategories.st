tools
cleanupCategories
	"Remove all the empty categories and fix common inconsistencies in categorie names and protocols."

	| cleanup new |
	cleanup := [ :class :protocol |
		(new := protocol asLowercase).
		(new = #'initialize-release' or: [ new = #'class-initialization' ])
			ifTrue: [ new := #initialization ].
		(new = #'instance-creation')
			ifTrue: [ new := #'instance creation' ].
		(new = protocol)
			ifFalse: [ class organization renameCategory: protocol toBe: new ].
		class organization removeEmptyCategories ].
	Smalltalk organization removeEmptyCategories.
	self packages
		do: [ :package |
			package classesAndMetaClasses do: [ :class |
				(package coreCategoriesForClass: class)
					do: [ :protocol | cleanup value: class value: protocol ] ].
			package extensionClasses do: [ :class |
				(package extensionCategoriesForClass: class)
					do: [ :protocol | cleanup value: class value: protocol ] ] ]
		displayingProgress: 'cleaning up'