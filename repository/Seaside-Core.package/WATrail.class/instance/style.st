rendering
style
^'	ul.trail {
		margin-left: 0;
		padding-left: 0;
		display: inline;
		border: none;
	}
	ul.trail li {
        	margin-left: 0;
        	padding-left: 2px;
        	border: none;
        	list-style: none;
        	display: inline;
	}

	ul.trail  li:before {
        content: "\0020 \0020 \0020 \00BB \0020";
        }

	ul.trail li.first:before {
        content: " ";
        }
'