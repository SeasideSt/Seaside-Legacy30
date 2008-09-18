Error handlers are invoked when an error in a Seaside application occurs. WASession uses the method WARequest>>withErrorHandler: to set up exception handlers that call the appropriate WAErrorHandler subclass based on the #errorHandler configuration attribute.

Error handlers have methods to handle:
- Errors
- Warnings
- Internal errors

Internal errors are typically errors that occur while trying to execute one of the other error handlers and should be as basic as possible to ensure they don't have any trouble executing.

See WAWalkbackErrorHandler in the development packages for examples of how to do rendering with the canvas API.