accessing
children
	"This method is really important. It should return a collection of all subcomponents of the current component that will be rendered in #renderContentOn:. Components that are displayed using #call: are *not* children.

	If the contents returned by this method change over time make sure to return them in #states as well, otherwise the back button will fail."

	^ #()