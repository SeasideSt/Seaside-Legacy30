initialization
shutDown
	| restorePriority |
	process ifNil: [ ^ self ].
	"Temporary fix for http://forum.world.st/Pharo7-consistent-image-freeze-deadlock-on-snapshotAndQuit-td5082114.html"
	restorePriority := Processor activeProcess priority.
	Processor activeProcess priority: 15.
	GRPlatform current terminateProcess: process.
	Processor activeProcess priority: restorePriority.
	process := nil