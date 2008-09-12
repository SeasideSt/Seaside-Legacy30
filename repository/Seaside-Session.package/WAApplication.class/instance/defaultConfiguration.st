configuration
defaultConfiguration
	"WAApplicationConfiguration is actually required. WARenderLoopConfiguration is added by default because most users will use WASession and the Render Loop."
	^ super defaultConfiguration
		removeParent: WARequestHandlingConfiguration instance;
		addParent: WAApplicationConfiguration instance;
		addParent: WARenderLoopConfiguration instance;
		yourself