WALRUCache implements at Least Recently Used cache. Items are removed from the cache when they reach "max" age. The age of an item is the number of additions to the cache done since the item itself was added. WALRUCache does not worry about the size of the cache. The "capacity:" method is misleading, it sets how long items will remain in the cache.

Instance Variables:
	ageTable	<Dictionary>	The age each time in the cache
	max	<SmallInteger>	The age at which items are removed from the cache
	table	<Dictionary>	Items in the cache, each item has key
			
WALRUCache is used to store the last n continutations of a session.

