running
setUp
	baseName := SeasidePlatformSupport defaultDispatcherName.
	alternateName := 'seaside/stream'.
	defaultDispatcher := WADispatcher default.
	alternateDispatcher := defaultDispatcher copy setName: alternateName.
	shortDispatcher := defaultDispatcher copy setName: ''.
	defaultDispatcher addDependent: self