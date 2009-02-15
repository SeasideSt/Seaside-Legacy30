uploads
ajaxifierJs
	^ '/* JQuery based Ajaxifier
 * Copyright (c) 2008 Lukas Renggli, renggli@gmail.com
 *
 * For additional documentation see:
 * - http://www.lukas-renggli.ch/blog/ajaxification
 * - http://www.lukas-renggli.ch/blog/ajaxification-faq
 */

$(function () {
	
	// constants
	var HEAD_EXTRACTOR = /<head[^>]*>(.*)<\/head>/im;
	var BODY_EXTRACTOR = /<body[^>]*>(.*)<\/body>/im;
	var SCRIPT_EXTRACTOR = /<script(.|\s)*?\/script>/ig;
	
	// ajax action
	function load(type, url, data) {
		$.ajax({
			type: type, url: url, data: data,
			beforeSend: function (xhr) {
				xhr.setRequestHeader("X-Requested-With", "Ajaxifier");
			},
			complete: function (response, status) {
				if (status == "success" || status == "notmodified") {
					$("head").html(HEAD_EXTRACTOR
						.exec(response.responseText)[1]
						.replace(SCRIPT_EXTRACTOR, ""));
					$("body").html(BODY_EXTRACTOR
						.exec(response.responseText)[1]);
				}
			}
		});
	}
	
	// click handler
	$(document).click(function (event) {
		
		// links
		var anchor = $(event.target).closest("a");
		if (anchor.length == 1) {
			load("GET", anchor.attr("href"));
			event.preventDefault();
		}
		
		// submit
		var submit = $(event.target).closest("input[type=submit], button[type=submit]");
		if (submit.length == 1) {
			var form = submit.closest("form");
			if (form.length == 1) {
				load("POST", form.attr("action"), form.find(":input").serialize() + "&" + submit.attr("name"));
				event.preventDefault();
			}
		}
		
	});

});'