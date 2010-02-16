accessing
gofers
	"Answer a collection of gopher instances for all Seaside related packages."
	"self gofers do: [ :g | g update; recompile ]"
	
	^ self gofersFor: GRPackage packages