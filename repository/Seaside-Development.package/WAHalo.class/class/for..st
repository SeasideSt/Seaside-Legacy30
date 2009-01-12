instance creation
for: aComponent
	^ Halos at: aComponent ifAbsentPut: [ self new initializeOn: aComponent ]