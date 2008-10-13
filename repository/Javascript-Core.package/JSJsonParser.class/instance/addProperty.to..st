adding
addProperty: anAssociation to: aDictionary
	"Add the property anAssociation described with key and value to aDictionary. Subclasses might want to refine this implementation."
	
	^ aDictionary 
		add: anAssociation;
		yourself