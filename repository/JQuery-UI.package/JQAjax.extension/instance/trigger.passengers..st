*jquery-ui
trigger: aBlock passengers: aQuery
	self
		callback: [ :value | 
			aBlock value: (((value findTokens: $,)
				collect: [ :each | self renderContext callbacks passengerAt: each ])
				reject: [ :each | each isNil ]) ]
		value: (JSStream on: JQuery functionName , '.map(' , aQuery printString , '.get(),function(each){return each.id}).join(",")')