!function(e,t){e.rails!==t&&e.error("jquery-ujs has already been loaded!");var n,i=e(document);e.rails=n={linkClickSelector:"a[data-confirm], a[data-method], a[data-remote], a[data-disable-with]",buttonClickSelector:"button[data-remote]",inputChangeSelector:"select[data-remote], input[data-remote], textarea[data-remote]",formSubmitSelector:"form",formInputClickSelector:"form input[type=submit], form input[type=image], form button[type=submit], form button:not([type])",disableSelector:"input[data-disable-with], button[data-disable-with], textarea[data-disable-with]",enableSelector:"input[data-disable-with]:disabled, button[data-disable-with]:disabled, textarea[data-disable-with]:disabled",requiredInputSelector:"input[name][required]:not([disabled]),textarea[name][required]:not([disabled])",fileInputSelector:"input[type=file]",linkDisableSelector:"a[data-disable-with]",CSRFProtection:function(t){var n=e('meta[name="csrf-token"]').attr("content");n&&t.setRequestHeader("X-CSRF-Token",n)},fire:function(t,n,i){var r=e.Event(n);return t.trigger(r,i),r.result!==!1},confirm:function(e){return confirm(e)},ajax:function(t){return e.ajax(t)},href:function(e){return e.attr("href")},handleRemote:function(i){var r,o,a,s,l,u,c,d;if(n.fire(i,"ajax:before")){if(s=i.data("cross-domain"),l=s===t?null:s,u=i.data("with-credentials")||null,c=i.data("type")||e.ajaxSettings&&e.ajaxSettings.dataType,i.is("form")){r=i.attr("method"),o=i.attr("action"),a=i.serializeArray();var p=i.data("ujs:submit-button");p&&(a.push(p),i.data("ujs:submit-button",null))}else i.is(n.inputChangeSelector)?(r=i.data("method"),o=i.data("url"),a=i.serialize(),i.data("params")&&(a=a+"&"+i.data("params"))):i.is(n.buttonClickSelector)?(r=i.data("method")||"get",o=i.data("url"),a=i.serialize(),i.data("params")&&(a=a+"&"+i.data("params"))):(r=i.data("method"),o=n.href(i),a=i.data("params")||null);d={type:r||"GET",data:a,dataType:c,beforeSend:function(e,r){return r.dataType===t&&e.setRequestHeader("accept","*/*;q=0.5, "+r.accepts.script),n.fire(i,"ajax:beforeSend",[e,r])},success:function(e,t,n){i.trigger("ajax:success",[e,t,n])},complete:function(e,t){i.trigger("ajax:complete",[e,t])},error:function(e,t,n){i.trigger("ajax:error",[e,t,n])},crossDomain:l},u&&(d.xhrFields={withCredentials:u}),o&&(d.url=o);var f=n.ajax(d);return i.trigger("ajax:send",f),f}return!1},handleMethod:function(i){var r=n.href(i),o=i.data("method"),a=i.attr("target"),s=e("meta[name=csrf-token]").attr("content"),l=e("meta[name=csrf-param]").attr("content"),u=e('<form method="post" action="'+r+'"></form>'),c='<input name="_method" value="'+o+'" type="hidden" />';l!==t&&s!==t&&(c+='<input name="'+l+'" value="'+s+'" type="hidden" />'),a&&u.attr("target",a),u.hide().append(c).appendTo("body"),u.submit()},disableFormElements:function(t){t.find(n.disableSelector).each(function(){var t=e(this),n=t.is("button")?"html":"val";t.data("ujs:enable-with",t[n]()),t[n](t.data("disable-with")),t.prop("disabled",!0)})},enableFormElements:function(t){t.find(n.enableSelector).each(function(){var t=e(this),n=t.is("button")?"html":"val";t.data("ujs:enable-with")&&t[n](t.data("ujs:enable-with")),t.prop("disabled",!1)})},allowAction:function(e){var t,i=e.data("confirm"),r=!1;return i?(n.fire(e,"confirm")&&(r=n.confirm(i),t=n.fire(e,"confirm:complete",[r])),r&&t):!0},blankInputs:function(t,n,i){var r,o,a=e(),s=n||"input,textarea",l=t.find(s);return l.each(function(){if(r=e(this),o=r.is("input[type=checkbox],input[type=radio]")?r.is(":checked"):r.val(),!o==!i){if(r.is("input[type=radio]")&&l.filter('input[type=radio]:checked[name="'+r.attr("name")+'"]').length)return!0;a=a.add(r)}}),a.length?a:!1},nonBlankInputs:function(e,t){return n.blankInputs(e,t,!0)},stopEverything:function(t){return e(t.target).trigger("ujs:everythingStopped"),t.stopImmediatePropagation(),!1},disableElement:function(e){e.data("ujs:enable-with",e.html()),e.html(e.data("disable-with")),e.bind("click.railsDisable",function(e){return n.stopEverything(e)})},enableElement:function(e){e.data("ujs:enable-with")!==t&&(e.html(e.data("ujs:enable-with")),e.removeData("ujs:enable-with")),e.unbind("click.railsDisable")}},n.fire(i,"rails:attachBindings")&&(e.ajaxPrefilter(function(e,t,i){e.crossDomain||n.CSRFProtection(i)}),i.delegate(n.linkDisableSelector,"ajax:complete",function(){n.enableElement(e(this))}),i.delegate(n.linkClickSelector,"click.rails",function(i){var r=e(this),o=r.data("method"),a=r.data("params");if(!n.allowAction(r))return n.stopEverything(i);if(r.is(n.linkDisableSelector)&&n.disableElement(r),r.data("remote")!==t){if(!(!i.metaKey&&!i.ctrlKey||o&&"GET"!==o||a))return!0;var s=n.handleRemote(r);return s===!1?n.enableElement(r):s.error(function(){n.enableElement(r)}),!1}return r.data("method")?(n.handleMethod(r),!1):void 0}),i.delegate(n.buttonClickSelector,"click.rails",function(t){var i=e(this);return n.allowAction(i)?(n.handleRemote(i),!1):n.stopEverything(t)}),i.delegate(n.inputChangeSelector,"change.rails",function(t){var i=e(this);return n.allowAction(i)?(n.handleRemote(i),!1):n.stopEverything(t)}),i.delegate(n.formSubmitSelector,"submit.rails",function(i){var r=e(this),o=r.data("remote")!==t,a=n.blankInputs(r,n.requiredInputSelector),s=n.nonBlankInputs(r,n.fileInputSelector);if(!n.allowAction(r))return n.stopEverything(i);if(a&&r.attr("novalidate")==t&&n.fire(r,"ajax:aborted:required",[a]))return n.stopEverything(i);if(o){if(s){setTimeout(function(){n.disableFormElements(r)},13);var l=n.fire(r,"ajax:aborted:file",[s]);return l||setTimeout(function(){n.enableFormElements(r)},13),l}return n.handleRemote(r),!1}setTimeout(function(){n.disableFormElements(r)},13)}),i.delegate(n.formInputClickSelector,"click.rails",function(t){var i=e(this);if(!n.allowAction(i))return n.stopEverything(t);var r=i.attr("name"),o=r?{name:r,value:i.val()}:null;i.closest("form").data("ujs:submit-button",o)}),i.delegate(n.formSubmitSelector,"ajax:beforeSend.rails",function(t){this==t.target&&n.disableFormElements(e(this))}),i.delegate(n.formSubmitSelector,"ajax:complete.rails",function(t){this==t.target&&n.enableFormElements(e(this))}),e(function(){var t=e("meta[name=csrf-token]").attr("content"),n=e("meta[name=csrf-param]").attr("content");e('form input[name="'+n+'"]').val(t)}))}(jQuery);