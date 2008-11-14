rendering-attributes
renderInheritanceForAttribute: anAttribute on: html
	html tableData: [
		| wasInherited |
		wasInherited := false.
		self configuration inheritedValueAndSourceAt: anAttribute key do: [ :value :source |
			wasInherited ifFalse: [
				(self configuration hasLocalValueForAttribute: anAttribute)
					ifTrue: [
						html anchor 
							title: 'revert to ' , value printString , ', overriden from ', source name;
							callback: [ self configuration clearValueForAttribute: anAttribute ]; 
							with: 'revert' ]
					ifFalse: [
						html anchor 
							title: 'inherited from ', source name;
							callback: [ self configuration overrideAttribute: anAttribute ]; 
							with: 'override'.
						(anAttribute isKindOf: WACollectionAttribute) ifTrue: [
							html text: ' '.
							html anchor
								callback: [ self configuration at: anAttribute key addAll: #() removeAll: #() ];
								with: 'modify' ] ].
			wasInherited := true. ] ].
				
		wasInherited ifFalse: [
			(self configuration hasLocalValueForAttribute: anAttribute)
				ifTrue: [
					html anchor 
						callback: [ self configuration clearValueForAttribute: anAttribute ];
						with: 'clear' ]
				ifFalse: [
					anAttribute default isNil
						ifTrue: [
							html span
								class: 'unspecified';
								with: '(unspecified)' ]
						ifFalse: [
							html anchor 
								title: 'inherited from attribute default';
								callback: [ self configuration overrideAttribute: anAttribute ]; 
								with: 'override'.
							(anAttribute isKindOf: WACollectionAttribute) ifTrue: [
								html text: ' '.
								html anchor
									callback: [ self configuration at: anAttribute key addAll: #() removeAll: #() ];
									with: 'modify' ] ] ] ] ]