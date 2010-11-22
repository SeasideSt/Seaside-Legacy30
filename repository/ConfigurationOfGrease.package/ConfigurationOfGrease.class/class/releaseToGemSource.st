development support
releaseToGemSource
	"self releaseToGemSource"
	
	"Note you before copying config to GemSource, you should have tested the release in GLASS.
	 You also need to have commit rights to the GemSource repository."

	(Smalltalk at: #Gofer) new
		gemsource: 'MetacelloRepository';
		package: self name asString;
		push