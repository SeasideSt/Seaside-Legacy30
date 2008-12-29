Exception handlers are invoked when an error in a Seaside application occurs. Request handlers can use the class-side method #handleExceptionsDuring:context: to set up exception handlers around a block of code.

== Selecting ==

Exception handlers can configure which exceptions they want to handle by overriding the class-side method #exceptionSelector. This method should return either a subclass of Exception or an ExceptionSet. Users may also choose to override #handles: on the class-side directly, if they need more complex behaviour.

== Handling ==

Handling behaviour is implemented on the instance side by implementing #handleException:. This method should return a suitable seaside response (usually an instance of WAResponse) if it returns at all (it may, for example, choose to resume the exception instead).

== Internal Errors ==

Internal errors are typically errors that occur while trying to execute one of the other error handlers and should be as basic as possible to ensure they don't have any trouble executing. Request handlers can ask for an internal error response by calling #internalError:context: on the class-side of an exception handler.

== HTML Responses ==

See WAWalkbackErrorHandler in the development packages for examples of how to do rendering with the canvas API.
