tests
testLinearization
	"from http://www.webcom.com/haahr/dylan/linearization-oopsla96.html"
	| root boat dayBoat wheelBoat engineLess pedalWheelBoat smallMultihull smallCatamaran pedalo |
	root := WAUserConfiguration new.
	boat := WAUserConfiguration new addAncestor: root; yourself.
	dayBoat := WAUserConfiguration new addAncestor: boat; yourself.
	wheelBoat := WAUserConfiguration new addAncestor: boat; yourself.
	engineLess := WAUserConfiguration new addAncestor: dayBoat; yourself.
	pedalWheelBoat := WAUserConfiguration new addAncestor: engineLess; addAncestor: wheelBoat; yourself.
	smallMultihull := WAUserConfiguration new addAncestor: dayBoat; yourself.
	smallCatamaran := WAUserConfiguration new addAncestor: smallMultihull; yourself.
	pedalo := WAUserConfiguration new addAncestor: pedalWheelBoat; addAncestor: smallCatamaran; yourself.

	self assert: pedalWheelBoat allAncestors = (Array with: engineLess with: dayBoat with: wheelBoat with: boat with: root).
	self assert: smallCatamaran allAncestors = (Array with: smallMultihull with: dayBoat with: boat with: root).
	self assert: pedalo allAncestors = ((Array with: pedalWheelBoat with: engineLess with: smallCatamaran with: smallMultihull), (Array with: dayBoat with: wheelBoat with: boat with: root))