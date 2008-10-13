generated-comments
scannerDefinitionComment

	"<name>			: [a-zA-Z_] \w* 
				;
<string>			: \"" ((\\.) | ([^\\\""]))* \"" 
				| \' ((\\.) | ([^\\\']))* \'
				;
<number>		: \-? \d+ (\. \d+)? ([eE] [\-\+]? \d+)?
				;

<whitespace>		: \s+
				;
<comment>		: \/\/ [^\r\n]* (\r | \n | \r\n)	?
				;
<scanComment>	: \/ \*
				;"