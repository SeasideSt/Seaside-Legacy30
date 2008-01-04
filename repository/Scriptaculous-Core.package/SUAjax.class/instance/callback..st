callbacks
callback: aBlock
	"Register aBlock as a primary callback of the receiver. It only makes sense to have a single primary callback registered per instance. Depending on the actual evaluation strategy, see #handle:on:, aBlock will be evaluated with a renderer/script as its first argument."

	callback := aBlock fixCallbackTemps