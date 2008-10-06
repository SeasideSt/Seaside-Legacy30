testing
testDevelopmentFilenames
	| expected actual |
	expected := #(#configPng #codebrowserPng #haloCss #inspectorPng #memoryPng #profilerPng #styleeditorPng #toolbarCss).
	actual := WADevelopmentFiles new fileSelectors.
	"VW does not implement #= in Sets"
	self assert: actual size = expected size.
	expected do: [ :each |
		self assert: (expected includes: each)]