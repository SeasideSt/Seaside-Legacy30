rendering
renderInheritanceForAttribute: anAttribute on: html
	html tableData: [
		| wasInherited |
		wasInherited := false.
		self inheritedValueAndSourceAt: anAttribute key do: [ :value :source |
			wasInherited ifFalse: [
				(self hasLocalValueForAttribute: anAttribute)
					ifTrue: [
						html anchor
							onClick: 'return submitForm(this)';
							title: 'revert to ' , value printString , ', overriden from ', source name;
							callback: [ self clearAttribute: anAttribute ]; 
							with: 'revert' ]
					ifFalse: [
						html anchor
							onClick: 'return submitForm(this)';
							title: 'inherited from ', source name;
							callback: [ self overrideAttribute: anAttribute ]; 
							with: 'override'.
						(anAttribute isKindOf: WACollectionAttribute) ifTrue: [
							html text: ' '.
							html anchor
								onClick: 'return submitForm(this)';
								callback: [ self modifyCollectionAttribute: anAttribute ];
								with: 'modify' ] ].
			wasInherited := true ] ].
		wasInherited ifFalse: [
			(self hasLocalValueForAttribute: anAttribute)
				ifTrue: [
					html anchor
						onClick: 'return submitForm(this)';
						callback: [ self clearAttribute: anAttribute ];
						with: 'clear' ]
				ifFalse: [
					anAttribute default isNil
						ifTrue: [
							html span
								class: 'unspecified';
								with: '(unspecified)' ]
						ifFalse: [
							html anchor
								onClick: 'return submitForm(this)';
								title: 'inherited from attribute default';
								callback: [ self overrideAttribute: anAttribute ]; 
								with: 'override'.
							(anAttribute isKindOf: WACollectionAttribute) ifTrue: [
								html text: ' '.
								html anchor
									onClick: 'return submitForm(this)';
									callback: [ self modifyCollectionAttribute: anAttribute ];
									with: 'modify' ] ] ] ] ]