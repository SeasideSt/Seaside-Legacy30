plugin-halos
haloFor: aComponent
	^ halos at: aComponent ifAbsentPut: [ WAHalo on: aComponent ]