testing-packages
testPackages
	| packages |
	packages := GRPackage packages.
	self assert: packages notEmpty.
	packages 
		do: [ :each | self assert: each name notEmpty ]