Error handlers are invoked when an error in a Seaside application occurs. They handle
- errors
- warnings
- internal errors in the Seaside core

I am the base class for all error handlers and handle only internal errors which which I display a code 500 error with a short stackframe.

See WAWalkbackErrorHandler for examples of how to do rendering with the canvas API.