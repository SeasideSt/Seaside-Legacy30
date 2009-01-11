seaside
fixCallbackTempsMissing
	| saveSelectors matcher |
	saveSelectors := #(
		#allSatisfy:
		#anySatisfy:
		#at:ifAbsent:
		#at:ifAbsentPut:
		#at:ifPresent:
		#count:
		#critical:
		#detect:ifNone:
		#do:
		#do:separatedBy:
		#ensure:
		#fixCallbackTemps
		#fixTemps
		#ifCurtailed:
		#inject:into:
		#noneSatisfy:
		#on:do:
		#reject:
		#render:
		#select:
		#should:
		#should:description:
		#should:raise:
		#should:raise:description:
		#should:raise:whoseDescriptionDoesNotInclude:description:
		#should:raise:whoseDescriptionIncludes:description:
		#shouldnt:
		#shouldnt:description:
		#shouldnt:raise:
		#shouldnt:raise:description:
		#shouldnt:raise:whoseDescriptionDoesNotInclude:description:
		#shouldnt:raise:whoseDescriptionIncludes:description:
		#timesRepeat:
		#use:during:
		#with:
	) asSet.
	matcher := ParseTreeSearcher new.
	matcher 
		matches: '[ | `@temps | `@.statements ]'
		do: 
			[ :node :answer | 
			| found |
			found := false.
			(answer isNil and: [ node isInlined not and: [ node parent isMessage ] ]) ifTrue: 
				[ ((saveSelectors includes: node parent selector) or: 
					[ (WASlime brushSelectors includes: node parent selector) or: 
						[ (WASlime attributeSelectors includes: node parent selector) or: [ WASlime callbackSelectors includes: node parent selector ] ] ]) ifFalse: 
					[ | dangerousNames |
					dangerousNames := Set new.
					node parent parents do: 
						[ :parent | 
						parent isBlock ifTrue: [ dangerousNames addAll: parent argumentNames ].
						parent isSequence ifTrue: [ dangerousNames addAll: parent temporaryNames ] ].
					(dangerousNames anySatisfy: [ :each | node references: each ]) ifTrue: [ found := true ] ] ].
			found ifTrue: [ node ] ].
	^ self new
		name: '#fixCallbackTemps possibly missing';
		rationale: 'I don''t feel like explaining that here.';
		matcher: matcher;
		yourself