initialization
initializeOn: aUserConfiguration
	self initialize.
	WASystemConfiguration clearAllDescriptions.
	configuration := aUserConfiguration.
	groups := OrderedCollection new.
	groups add: (WAAncestryAttributeEditor new configuration: configuration; group: #ancestry; parent: self ; yourself).
	groups addAll: 
		(self groupedAttributes collect: [ :association |
				WAConfigAttributeEditor new
					configuration: configuration;
					attributes: association value;
					group: association key;
					parent: self;
					hasAdvancedAttributes: (self includesAdvanced: association value);
					yourself ]).