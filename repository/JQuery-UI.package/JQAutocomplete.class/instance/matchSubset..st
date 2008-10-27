options
matchSubset: aBoolean
	"Whether or not the autocompleter can use a cache for more specific queries. This means that all matches of 'foot' are a subset of all matches for 'foo'. Usually this is true, and using this options decreases server load and increases performance. Only useful with cacheLength settings bigger than one, like 10."

	self optionAt: 'matchSubset' put: aBoolean