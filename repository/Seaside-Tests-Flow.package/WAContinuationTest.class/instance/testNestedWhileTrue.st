tests
testNestedWhileTrue
	| account continuation accountValues  |
	true ifTrue: [^self].
	tmp := 0.
	account := nil.
	accountValues := Array new: 2.
	tmp2 := Array new: 2.
    [:finalVal | 
      [:initialVal | 
        ["This puts account two levels up"
          account := self callcc: [:oc | continuation := oc. initialVal ].
		  tmp2 at: tmp + 1 put: account.
		  account isNil] whileTrue.
	    tmp := tmp + 1.
	    accountValues at: tmp put: account.
	    continuation notNil
		  ifTrue: [
			continuation value: finalVal]] value: 1"initialVal"] 
      value: 2"finalVal".
	self assert: tmp = 2.
	self assert: account = 2.

