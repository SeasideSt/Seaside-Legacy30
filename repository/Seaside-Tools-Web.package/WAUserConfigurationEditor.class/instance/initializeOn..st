initialization
initializeOn: aUserConfiguration
	self initialize.
	WASystemConfiguration clearAllDescriptions.
	configuration := aUserConfiguration.
	groups := OrderedCollection new.
	groups add: (WAAncestryAttributeEditor new configuration: configuration; group: #ancestry; yourself).
	self groupedAttributes do: [ :association |
			groups add: (
				WAConfigAttributeEditor new
					configuration: configuration;
					attributes: association value;
					group: association key;
					hasAdvancedAttributes: (self includesAdvanced: association value);
					 yourself) ].