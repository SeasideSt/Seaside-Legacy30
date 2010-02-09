configuration
arbitraryCollection
	"An general collection for testing. It should meet the needs of #duplicateElement,
	#excludedElement, #includedElement, and so on where appropriate."
	
	^ self collectionClass withAll: #(3 1 2 1 4)