scripts
miscJs
	^ '
	function swapDisplay(a, b) {
		var tmp = document.getElementById(a).style.display;
		document.getElementById(a).style.display = document.getElementById(b).style.display;
		document.getElementById(b).style.display = tmp;
	}

	function submitFormTriggeringCallback(formName, callbackKey, value) {
		if (value)
			{
				var ele = document.createElement("input");
				ele.type = "hidden";
				ele.name = callbackKey;
				ele.value = value;
				document.forms[formName].appendChild(ele)
			}
		submitForm(formName)
	}

	function submitForm(formName) {
		document.forms[formName].submit();
	}

	function chooseOther(select, hiddenId, p) {
		value = prompt(p);
		document.getElementById(hiddenId).value = value;
		select.options[select.options.length-1].text = value;
	}

	function enableChoice(enableID, disableID) {
		document.getElementById(enableID).disabled = false;
		document.getElementById(disableID).disabled = true;
	}

	function setFocus(elementId) {
		document.getElementById(elementId).focus();
	}

	function setCursor(elementId, pos) {
		var input = document.getElementById(elementId);
		input.focus();
		/* When pos parameter not supplied, place cursor at end of input field */
		if (!pos) pos = input.value.length;
		if (typeof document.selection != "undefined") {
	    		/* Place cursor in MS-IE */
	    		var range = document.selection.createRange();
	     	range.moveStart("character", pos);
	 		range.select();
	  	} else if (typeof input.selectionStart != "undefined") {
		  	/* Place cursor in Gecko browsers */
	    		input.selectionStart = pos;
	    		input.selectionEnd = pos;
	  	} else {
	  		/* Other browsers, please feel free to implement */
			alert("unknown browser");
		}
	}

'