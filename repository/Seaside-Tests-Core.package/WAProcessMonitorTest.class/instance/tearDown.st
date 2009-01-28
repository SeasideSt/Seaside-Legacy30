running
tearDown
	"GemStone has trouble if a TestResult -> a TestCase -> a WAProcessMonitor -> a Process is committed. We solve that by clearing the instance variable at the end of the test."

	monitor := nil.
	super tearDown