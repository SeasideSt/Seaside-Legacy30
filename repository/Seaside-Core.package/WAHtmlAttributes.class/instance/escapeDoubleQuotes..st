private
escapeDoubleQuotes: aString
	^ aString copyReplaceAll: '"' with: '\"'