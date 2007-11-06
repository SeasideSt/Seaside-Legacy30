comparing
hash
	"Currently we do not take file modification time on disk into account.
	Note that mimeType and mimeDocument are set lazily later, so we can't use
	the mimeType in the hash."

	^fullFileName hash