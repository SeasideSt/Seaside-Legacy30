testing
testDevelopmentFilenames
	| expected actual |
	expected := #(#deprecatedPng #haloCss #inspectorPng #configPng #profilerPng #memoryPng #toolsCss #styleeditorPng #codebrowserPng #windowCss #toolbarCss).
	actual := WADevelopmentFiles new fileSelectors.
	"VW does not implement #= in Sets"
	self assert: actual size = expected size.
	expected do: [ :each |
		self assert: (expected includes: each)]