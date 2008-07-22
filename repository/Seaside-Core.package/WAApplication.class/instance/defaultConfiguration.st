configuration
defaultConfiguration
	"WAApplicationConfiguration is actually required. WARenderLoopConfiguration is added by default because most users will use WASession and the Render Loop."
	^ super defaultConfiguration
		addAncestor: WAApplicationConfiguration instance;
		addAncestor: WARenderLoopConfiguration instance;
		yourself