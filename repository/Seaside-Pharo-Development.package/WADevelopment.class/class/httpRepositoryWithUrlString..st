monticello-repositories
httpRepositoryWithUrlString: aString
	^ MCRepositoryGroup default repositories
		detect: [:each |
			(each isKindOf: MCHttpRepository) and:
				[ (each locationWithTrailingSlash = aString) ] ]
		ifNone: [
			"addRepository: should return its parameter but currently doesn't in
			many MC versions"
			| repository |
			repository := MCHttpRepository
				location: aString
				user: ''
				password: ''.
			MCRepositoryGroup default addRepository: repository.
			repository ]