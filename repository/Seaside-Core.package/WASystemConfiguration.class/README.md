Subclass WASystemConfiguration to define a group of attributes for a Seaside application. The method "attributes" returns a collection of attributes in this configuration. If a configuration requires other configurations then implement the method "ancestors", which returns a collection of configuration classes. Subclasses can define default values for attributes. If you define an attribute named "useSessionCookie" you can provide a default value by implementing a method "useSessionCookie" that returns the default value. See existing subclasses for examples. Non-default values for attributes are not stored in WASystemConfiguration subclasses, but are stored in WAUserConfiguration.

WAUserConfiguration is a singleton class to avoid implementing = and hash. Only need one instance of WAUserConfiguration and its subclasses.

Subclasses must implement the following messages:
	attributes
		return a collection of attribute objects