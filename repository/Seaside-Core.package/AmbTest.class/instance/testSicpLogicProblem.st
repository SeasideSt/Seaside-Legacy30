testing
testSicpLogicProblem
	"Baker, Cooper, Fletcher, Miller, and Smith live on different floors of an apartment house that contains only five floors. Baker does not live on the top floor. Cooper does not live on the bottom floor. Fletcher does not live on either the top or the bottom floor. Miller lives on a higher floor than does Cooper. Smith does not live on a floor adjacent to Fletcher's. Fletcher does not live on a floor adjacent to Cooper's. Where does everyone live?"

"This implementation is too slow - uncomment to actually run it."

"	|baker cooper fletcher miller smith|
	baker := amb oneOf: (1 to: 5).
	cooper := amb oneOf: (1 to: 5).
	fletcher := amb oneOf: (1 to: 5).
	miller := amb oneOf: (1 to: 5).
	smith := amb oneOf: (1 to: 5).

	amb assert: (Set new add: baker; add: cooper; add: fletcher; add: miller; add: smith; size) = 5.

	amb deny: baker = 5.
	amb deny: cooper = 1.
	amb deny: fletcher = 5.
	amb deny: fletcher = 1.
	amb assert: miller > cooper.
	amb deny: (smith - fletcher) abs = 1.
	amb deny: (fletcher - cooper) abs = 1.

	self assert: baker = 3.
	self assert: cooper = 2.
	self assert: fletcher = 4.
	self assert: miller = 5.
	self assert: smith = 1.
"