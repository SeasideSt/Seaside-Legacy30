running
tearDown
	"GemStone can have trouble if a continuation holding a Semaphore is persisted"
	savedContinuation := nil.
	super tearDown