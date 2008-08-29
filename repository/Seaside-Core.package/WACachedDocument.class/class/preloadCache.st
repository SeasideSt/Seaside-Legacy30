cache
preloadCache
	"Load the files into the image for the currently
	created instances in the Cache."

	DocumentCache valuesDo: [ :each | each asMIMEDocument ]