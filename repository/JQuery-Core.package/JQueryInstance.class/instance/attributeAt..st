attributes
attributeAt: aKey 
	"Access a property on the first matched element. This method makes it easy to retrieve a property value from the first matched element. If the element does not have an attribute with such a name, undefined is returned. Attributes include title, alt, src, href, width, style, etc."

	self call: 'attr' with: aKey