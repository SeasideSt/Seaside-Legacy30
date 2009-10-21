accessing
rationale
	^ 'Some platforms (at least VA Smalltalk) do not always return the value of the handler block as the result of the #on:do: call. ANSI does not require that they do so. When using the return value of #on:do:, a value should be explicitly returned by sending #return: to the exception.'