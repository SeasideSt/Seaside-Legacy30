actions
activate: aClass
	current contents: aClass new.
	(current contents respondsTo: #parent:)
		ifTrue: [ current contents parent: self ]