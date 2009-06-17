accessing
taskClasses
	"Grab all the task test classes, except for the empty one which causes a deliberate infinite loop."

	^ (WATask allSubclasses select: [:each | each subclasses isEmpty])
		copyWithout: WAEmptyTestTask