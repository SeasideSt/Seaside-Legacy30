tests
testWhileTrue
	| account continuation accountValues  |
	true ifTrue: [^self].
	tmp := 0.
	account := nil.
	accountValues := Array new: 2.
	tmp2 := Array new: 2.
	[account := (self callcc: [:oc | continuation := oc. 1 ]).
		tmp2 at: tmp + 1 put: account.
		account isNil] whileTrue.
	tmp := tmp + 1.
	accountValues at: tmp put: account.
	continuation notNil
		ifTrue: [
			continuation value: 2].
	self assert: tmp = 2.
	self assert: account = 2.