protected
push: aString
	"Push aString to all associated handlers."

	handlers do: [ :each | each push: aString ]