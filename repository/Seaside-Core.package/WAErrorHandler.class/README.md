Error handlers are invoked when an error in a Seaside application occurs. They handle
- errors
- warnings
- internal errors in the Seaside core

I am the base class for all error handlers and simply pass on any exception that is received.

See WAWalkbackErrorHandler for examples of how to do rendering with the canvas API.