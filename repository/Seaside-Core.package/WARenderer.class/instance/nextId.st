public
nextId
	"Return a identifier string that is unique within this RenderContext."
	
	^ 'id' , self callbacks advanceKey