A collection of standard scripts, styles, and images.

#windowCss styles the HTML created by WAWindowDecoration.
#shortcutJs creates the JavaScript used by WATagBrush>>addShortcut:.
#miscJs creates JavaScript used by:
	- WACheckboxTag>>submitFormNamed:
	- WAFormInputTag>>setFocus
	- WAAbstractTextAreaTag>>setSelectionFrom:to:
	- (the rest of the JS functions appear to be uncalled in the Seaside codebase)
#kalseyTabCss styles the HTML created by WANavigation
#externalAnchorJs sets a target of _blank for any anchor that has a "rel" attribute
	of "external". However, the JS function does not appear to be called anywhere
	in Seaside.