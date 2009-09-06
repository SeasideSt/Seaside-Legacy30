load and test
loadNewestPackages: aList

	Transcript cr.
	aList do: [:assoc |
		self
			loadNewestPackage: assoc value 
			from: assoc key.
	].
