private
removeAll: aRemoveCollection from: aColletion
	^ aColletion reject: [ :each | aRemoveCollection includes: each ]