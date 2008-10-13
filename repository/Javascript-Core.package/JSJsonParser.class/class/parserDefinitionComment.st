generated-comments
parserDefinitionComment

	"%start 			Value Object Array ArrayObject ;

ArrayObject 	: Object { #liftFirstValue: }
				| Array { #liftFirstValue: }
				;
		
Object			: ""{"" PropertyList ""}"" { #liftSecondValue: }
				;
Property		: String "":"" Value { self createProperty: '1' with: '3' }
				;
PropertyList		: { #createPropertyList }
				| PropertyList "","" Property { self addProperty: '3' to: '1' }
				| Property { self addProperty: '1' to: self createPropertyList }
				;

Array			: ""["" ValueList ""]"" { #liftSecondValue: }
				;
Value			: Literal { #liftFirstValue: }
				| Number { #liftFirstValue: }
				| String { #liftFirstValue: }
				| Object { #liftFirstValue: }
				| Array { #liftFirstValue: }
				;
ValueList		: { #createValueList }
				| ValueList "","" Value { self addValue: '3' to: '1' }
				| Value { self addValue: '1' to: self createValueList }
				;
			
Literal			: ""null"" { #createNull }
				| ""true"" { #createTrue }
				| ""false"" { #createFalse }
				;	
Number 		: <number> { self createNumber: '1' value }
				;
String 			: <string> { self createString: ('1' value copyFrom: 2 to: '1' value size - 1) }
				| <name> { self createName: '1' value }
				;"