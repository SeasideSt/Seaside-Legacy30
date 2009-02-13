public
peekNextId
	"Return the indentifier string that will be returned by the next call to #nextId."

	^ 'id' , self callbacks nextKey