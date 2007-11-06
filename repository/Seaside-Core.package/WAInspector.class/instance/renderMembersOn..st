rendering
renderMembersOn: html
	| members radioGroup |
	selected := nil.
	members := self object inspectorFields.
	members isEmpty ifTrue: [ ^ self ].
	radioGroup := html radioGroup.
	html table: [
		members associationsDo: [ :association |
			self
				renderRow: association value
				named: association key
				group: radioGroup
				on: html ] ]