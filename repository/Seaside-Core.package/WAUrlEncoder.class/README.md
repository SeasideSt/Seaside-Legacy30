I encode path segments and arguments of an URL.

I only do "precend encoding", I delegate the encoding from characters to bytes to a codec (provided by the server).