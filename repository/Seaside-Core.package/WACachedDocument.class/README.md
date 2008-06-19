This class is for serving smallish files like PNG images etc using WADocumentHandler. Using the Canvas API for HTML generation you simply do this:

	html image fileName: 'myimage.png'

or:

	html image fileName: 'myimage.blurp' mimeType: 'blurp' toMimeType

This will create a request handler in your WAApplication registry that is accessible on a unique URL and does not expire.
The actual contents of the file will only be read upon first access, we could augment this class with smarter caching, like checking the modification time on disk.

The class has a Cache class var holding a Dictionary of created instances so you can clear and preload files into the image using:

	WACachedDocument
		clearCache;
		fileName: 'myimage.png';
		fileName: 'another.gif'; "etc"
		preloadCache