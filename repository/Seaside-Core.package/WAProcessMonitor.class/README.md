WAProcessMonitor executes a block in a new process. Ensures that only one such block is executed at a time. See method critical:ifError:

Instance Variables:
	mutex	<Semaphore>	Used to sure that only one block is executed at a time
	process	<Process>	New process used to execute block
	semaphore	<Semaphore>	Used to signal when process is done

