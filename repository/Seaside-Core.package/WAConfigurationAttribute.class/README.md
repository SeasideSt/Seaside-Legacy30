WAConfigurationAttribute represents a value of a specified type in a Seaside application configuration. Some attributes are used are needed by Seaside for your application like deployment Mode and session timeout. Attributes like a database login may be used internally by the application.  

Each subclass of WAConfigurationAttribute handles one type (Number, Boolean, etc) of attribute. The "group" of the attribute is used to place all attributes in the same group together on the Seaside configuration page. The "key" of the attribute identifies the attribute. See WAConfiguration for example of accessing a configuration attribute. 

Subclasses must implement the following messages:
	valueFromString: aString
		convert "aString" into type represented by the class, return result of the conversion
	
	accept: aVisitor with: anObject
		Typical implementation is:
			aVisitor visitXXXAttribute: self with: anObject

		where XXX is the type of this attribute. The method visitXXXAttribute:with: must be implemented in all visitors, in particular WAConfigurationEditor which creates the configuration page for Seaside applications.

Instance Variables:
	group	<Symbol>	name of the group the attribute belongs to
	key	<Symbol>	key or name of the attribute, used to look up the attribute