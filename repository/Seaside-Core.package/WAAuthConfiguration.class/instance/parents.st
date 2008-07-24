ancestry
parents
	"Our configuration only depends on attributes from WASessionConfiguration. Currently, however, the only thing that drive WAApplication to use our attributes is WAAuthMain, which is a subclass of WARenderLoopMain. Therefore, we require the renderloop configuration for convenience. This could be changed at some point if authentication was made more pluggable so it did not depend on the render loop."
	^ Array with: WARenderLoopConfiguration instance