/*!
 * Bootstrap v3.0.3 (http://getbootstrap.com)
 * Copyright 2013 Twitter, Inc.
 * Licensed under http://www.apache.org/licenses/LICENSE-2.0
 */
if("undefined"==typeof jQuery)throw new Error("Bootstrap requires jQuery");/* ========================================================================
 * Bootstrap: transition.js v3.0.3
 * http://getbootstrap.com/javascript/#transitions
 * ========================================================================
 * Copyright 2013 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(e){"use strict";function t(){var e=document.createElement("bootstrap"),t={WebkitTransition:"webkitTransitionEnd",MozTransition:"transitionend",OTransition:"oTransitionEnd otransitionend",transition:"transitionend"};for(var n in t)if(void 0!==e.style[n])return{end:t[n]}}e.fn.emulateTransitionEnd=function(t){var n=!1,i=this;e(this).one(e.support.transition.end,function(){n=!0});var r=function(){n||e(i).trigger(e.support.transition.end)};return setTimeout(r,t),this},e(function(){e.support.transition=t()})}(jQuery),/* ========================================================================
 * Bootstrap: alert.js v3.0.3
 * http://getbootstrap.com/javascript/#alerts
 * ========================================================================
 * Copyright 2013 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(e){"use strict";var t='[data-dismiss="alert"]',n=function(n){e(n).on("click",t,this.close)};n.prototype.close=function(t){function n(){o.trigger("closed.bs.alert").remove()}var i=e(this),r=i.attr("data-target");r||(r=i.attr("href"),r=r&&r.replace(/.*(?=#[^\s]*$)/,""));var o=e(r);t&&t.preventDefault(),o.length||(o=i.hasClass("alert")?i:i.parent()),o.trigger(t=e.Event("close.bs.alert")),t.isDefaultPrevented()||(o.removeClass("in"),e.support.transition&&o.hasClass("fade")?o.one(e.support.transition.end,n).emulateTransitionEnd(150):n())};var i=e.fn.alert;e.fn.alert=function(t){return this.each(function(){var i=e(this),r=i.data("bs.alert");r||i.data("bs.alert",r=new n(this)),"string"==typeof t&&r[t].call(i)})},e.fn.alert.Constructor=n,e.fn.alert.noConflict=function(){return e.fn.alert=i,this},e(document).on("click.bs.alert.data-api",t,n.prototype.close)}(jQuery),/* ========================================================================
 * Bootstrap: button.js v3.0.3
 * http://getbootstrap.com/javascript/#buttons
 * ========================================================================
 * Copyright 2013 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(e){"use strict";var t=function(n,i){this.$element=e(n),this.options=e.extend({},t.DEFAULTS,i)};t.DEFAULTS={loadingText:"loading..."},t.prototype.setState=function(e){var t="disabled",n=this.$element,i=n.is("input")?"val":"html",r=n.data();e+="Text",r.resetText||n.data("resetText",n[i]()),n[i](r[e]||this.options[e]),setTimeout(function(){"loadingText"==e?n.addClass(t).attr(t,t):n.removeClass(t).removeAttr(t)},0)},t.prototype.toggle=function(){var e=this.$element.closest('[data-toggle="buttons"]'),t=!0;if(e.length){var n=this.$element.find("input");"radio"===n.prop("type")&&(n.prop("checked")&&this.$element.hasClass("active")?t=!1:e.find(".active").removeClass("active")),t&&n.prop("checked",!this.$element.hasClass("active")).trigger("change")}t&&this.$element.toggleClass("active")};var n=e.fn.button;e.fn.button=function(n){return this.each(function(){var i=e(this),r=i.data("bs.button"),o="object"==typeof n&&n;r||i.data("bs.button",r=new t(this,o)),"toggle"==n?r.toggle():n&&r.setState(n)})},e.fn.button.Constructor=t,e.fn.button.noConflict=function(){return e.fn.button=n,this},e(document).on("click.bs.button.data-api","[data-toggle^=button]",function(t){var n=e(t.target);n.hasClass("btn")||(n=n.closest(".btn")),n.button("toggle"),t.preventDefault()})}(jQuery),/* ========================================================================
 * Bootstrap: carousel.js v3.0.3
 * http://getbootstrap.com/javascript/#carousel
 * ========================================================================
 * Copyright 2013 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(e){"use strict";var t=function(t,n){this.$element=e(t),this.$indicators=this.$element.find(".carousel-indicators"),this.options=n,this.paused=this.sliding=this.interval=this.$active=this.$items=null,"hover"==this.options.pause&&this.$element.on("mouseenter",e.proxy(this.pause,this)).on("mouseleave",e.proxy(this.cycle,this))};t.DEFAULTS={interval:5e3,pause:"hover",wrap:!0},t.prototype.cycle=function(t){return t||(this.paused=!1),this.interval&&clearInterval(this.interval),this.options.interval&&!this.paused&&(this.interval=setInterval(e.proxy(this.next,this),this.options.interval)),this},t.prototype.getActiveIndex=function(){return this.$active=this.$element.find(".item.active"),this.$items=this.$active.parent().children(),this.$items.index(this.$active)},t.prototype.to=function(t){var n=this,i=this.getActiveIndex();return t>this.$items.length-1||0>t?void 0:this.sliding?this.$element.one("slid.bs.carousel",function(){n.to(t)}):i==t?this.pause().cycle():this.slide(t>i?"next":"prev",e(this.$items[t]))},t.prototype.pause=function(t){return t||(this.paused=!0),this.$element.find(".next, .prev").length&&e.support.transition.end&&(this.$element.trigger(e.support.transition.end),this.cycle(!0)),this.interval=clearInterval(this.interval),this},t.prototype.next=function(){return this.sliding?void 0:this.slide("next")},t.prototype.prev=function(){return this.sliding?void 0:this.slide("prev")},t.prototype.slide=function(t,n){var i=this.$element.find(".item.active"),r=n||i[t](),o=this.interval,a="next"==t?"left":"right",s="next"==t?"first":"last",l=this;if(!r.length){if(!this.options.wrap)return;r=this.$element.find(".item")[s]()}this.sliding=!0,o&&this.pause();var u=e.Event("slide.bs.carousel",{relatedTarget:r[0],direction:a});if(!r.hasClass("active")){if(this.$indicators.length&&(this.$indicators.find(".active").removeClass("active"),this.$element.one("slid.bs.carousel",function(){var t=e(l.$indicators.children()[l.getActiveIndex()]);t&&t.addClass("active")})),e.support.transition&&this.$element.hasClass("slide")){if(this.$element.trigger(u),u.isDefaultPrevented())return;r.addClass(t),r[0].offsetWidth,i.addClass(a),r.addClass(a),i.one(e.support.transition.end,function(){r.removeClass([t,a].join(" ")).addClass("active"),i.removeClass(["active",a].join(" ")),l.sliding=!1,setTimeout(function(){l.$element.trigger("slid.bs.carousel")},0)}).emulateTransitionEnd(600)}else{if(this.$element.trigger(u),u.isDefaultPrevented())return;i.removeClass("active"),r.addClass("active"),this.sliding=!1,this.$element.trigger("slid.bs.carousel")}return o&&this.cycle(),this}};var n=e.fn.carousel;e.fn.carousel=function(n){return this.each(function(){var i=e(this),r=i.data("bs.carousel"),o=e.extend({},t.DEFAULTS,i.data(),"object"==typeof n&&n),a="string"==typeof n?n:o.slide;r||i.data("bs.carousel",r=new t(this,o)),"number"==typeof n?r.to(n):a?r[a]():o.interval&&r.pause().cycle()})},e.fn.carousel.Constructor=t,e.fn.carousel.noConflict=function(){return e.fn.carousel=n,this},e(document).on("click.bs.carousel.data-api","[data-slide], [data-slide-to]",function(t){var n,i=e(this),r=e(i.attr("data-target")||(n=i.attr("href"))&&n.replace(/.*(?=#[^\s]+$)/,"")),o=e.extend({},r.data(),i.data()),a=i.attr("data-slide-to");a&&(o.interval=!1),r.carousel(o),(a=i.attr("data-slide-to"))&&r.data("bs.carousel").to(a),t.preventDefault()}),e(window).on("load",function(){e('[data-ride="carousel"]').each(function(){var t=e(this);t.carousel(t.data())})})}(jQuery),/* ========================================================================
 * Bootstrap: collapse.js v3.0.3
 * http://getbootstrap.com/javascript/#collapse
 * ========================================================================
 * Copyright 2013 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(e){"use strict";var t=function(n,i){this.$element=e(n),this.options=e.extend({},t.DEFAULTS,i),this.transitioning=null,this.options.parent&&(this.$parent=e(this.options.parent)),this.options.toggle&&this.toggle()};t.DEFAULTS={toggle:!0},t.prototype.dimension=function(){var e=this.$element.hasClass("width");return e?"width":"height"},t.prototype.show=function(){if(!this.transitioning&&!this.$element.hasClass("in")){var t=e.Event("show.bs.collapse");if(this.$element.trigger(t),!t.isDefaultPrevented()){var n=this.$parent&&this.$parent.find("> .panel > .in");if(n&&n.length){var i=n.data("bs.collapse");if(i&&i.transitioning)return;n.collapse("hide"),i||n.data("bs.collapse",null)}var r=this.dimension();this.$element.removeClass("collapse").addClass("collapsing")[r](0),this.transitioning=1;var o=function(){this.$element.removeClass("collapsing").addClass("in")[r]("auto"),this.transitioning=0,this.$element.trigger("shown.bs.collapse")};if(!e.support.transition)return o.call(this);var a=e.camelCase(["scroll",r].join("-"));this.$element.one(e.support.transition.end,e.proxy(o,this)).emulateTransitionEnd(350)[r](this.$element[0][a])}}},t.prototype.hide=function(){if(!this.transitioning&&this.$element.hasClass("in")){var t=e.Event("hide.bs.collapse");if(this.$element.trigger(t),!t.isDefaultPrevented()){var n=this.dimension();this.$element[n](this.$element[n]())[0].offsetHeight,this.$element.addClass("collapsing").removeClass("collapse").removeClass("in"),this.transitioning=1;var i=function(){this.transitioning=0,this.$element.trigger("hidden.bs.collapse").removeClass("collapsing").addClass("collapse")};return e.support.transition?(this.$element[n](0).one(e.support.transition.end,e.proxy(i,this)).emulateTransitionEnd(350),void 0):i.call(this)}}},t.prototype.toggle=function(){this[this.$element.hasClass("in")?"hide":"show"]()};var n=e.fn.collapse;e.fn.collapse=function(n){return this.each(function(){var i=e(this),r=i.data("bs.collapse"),o=e.extend({},t.DEFAULTS,i.data(),"object"==typeof n&&n);r||i.data("bs.collapse",r=new t(this,o)),"string"==typeof n&&r[n]()})},e.fn.collapse.Constructor=t,e.fn.collapse.noConflict=function(){return e.fn.collapse=n,this},e(document).on("click.bs.collapse.data-api","[data-toggle=collapse]",function(t){var n,i=e(this),r=i.attr("data-target")||t.preventDefault()||(n=i.attr("href"))&&n.replace(/.*(?=#[^\s]+$)/,""),o=e(r),a=o.data("bs.collapse"),s=a?"toggle":i.data(),l=i.attr("data-parent"),u=l&&e(l);a&&a.transitioning||(u&&u.find('[data-toggle=collapse][data-parent="'+l+'"]').not(i).addClass("collapsed"),i[o.hasClass("in")?"addClass":"removeClass"]("collapsed")),o.collapse(s)})}(jQuery),/* ========================================================================
 * Bootstrap: dropdown.js v3.0.3
 * http://getbootstrap.com/javascript/#dropdowns
 * ========================================================================
 * Copyright 2013 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(e){"use strict";function t(){e(i).remove(),e(r).each(function(t){var i=n(e(this));i.hasClass("open")&&(i.trigger(t=e.Event("hide.bs.dropdown")),t.isDefaultPrevented()||i.removeClass("open").trigger("hidden.bs.dropdown"))})}function n(t){var n=t.attr("data-target");n||(n=t.attr("href"),n=n&&/#/.test(n)&&n.replace(/.*(?=#[^\s]*$)/,""));var i=n&&e(n);return i&&i.length?i:t.parent()}var i=".dropdown-backdrop",r="[data-toggle=dropdown]",o=function(t){e(t).on("click.bs.dropdown",this.toggle)};o.prototype.toggle=function(i){var r=e(this);if(!r.is(".disabled, :disabled")){var o=n(r),a=o.hasClass("open");if(t(),!a){if("ontouchstart"in document.documentElement&&!o.closest(".navbar-nav").length&&e('<div class="dropdown-backdrop"/>').insertAfter(e(this)).on("click",t),o.trigger(i=e.Event("show.bs.dropdown")),i.isDefaultPrevented())return;o.toggleClass("open").trigger("shown.bs.dropdown"),r.focus()}return!1}},o.prototype.keydown=function(t){if(/(38|40|27)/.test(t.keyCode)){var i=e(this);if(t.preventDefault(),t.stopPropagation(),!i.is(".disabled, :disabled")){var o=n(i),a=o.hasClass("open");if(!a||a&&27==t.keyCode)return 27==t.which&&o.find(r).focus(),i.click();var s=e("[role=menu] li:not(.divider):visible a",o);if(s.length){var l=s.index(s.filter(":focus"));38==t.keyCode&&l>0&&l--,40==t.keyCode&&l<s.length-1&&l++,~l||(l=0),s.eq(l).focus()}}}};var a=e.fn.dropdown;e.fn.dropdown=function(t){return this.each(function(){var n=e(this),i=n.data("bs.dropdown");i||n.data("bs.dropdown",i=new o(this)),"string"==typeof t&&i[t].call(n)})},e.fn.dropdown.Constructor=o,e.fn.dropdown.noConflict=function(){return e.fn.dropdown=a,this},e(document).on("click.bs.dropdown.data-api",t).on("click.bs.dropdown.data-api",".dropdown form",function(e){e.stopPropagation()}).on("click.bs.dropdown.data-api",r,o.prototype.toggle).on("keydown.bs.dropdown.data-api",r+", [role=menu]",o.prototype.keydown)}(jQuery),/* ========================================================================
 * Bootstrap: modal.js v3.0.3
 * http://getbootstrap.com/javascript/#modals
 * ========================================================================
 * Copyright 2013 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(e){"use strict";var t=function(t,n){this.options=n,this.$element=e(t),this.$backdrop=this.isShown=null,this.options.remote&&this.$element.load(this.options.remote)};t.DEFAULTS={backdrop:!0,keyboard:!0,show:!0},t.prototype.toggle=function(e){return this[this.isShown?"hide":"show"](e)},t.prototype.show=function(t){var n=this,i=e.Event("show.bs.modal",{relatedTarget:t});this.$element.trigger(i),this.isShown||i.isDefaultPrevented()||(this.isShown=!0,this.escape(),this.$element.on("click.dismiss.modal",'[data-dismiss="modal"]',e.proxy(this.hide,this)),this.backdrop(function(){var i=e.support.transition&&n.$element.hasClass("fade");n.$element.parent().length||n.$element.appendTo(document.body),n.$element.show(),i&&n.$element[0].offsetWidth,n.$element.addClass("in").attr("aria-hidden",!1),n.enforceFocus();var r=e.Event("shown.bs.modal",{relatedTarget:t});i?n.$element.find(".modal-dialog").one(e.support.transition.end,function(){n.$element.focus().trigger(r)}).emulateTransitionEnd(300):n.$element.focus().trigger(r)}))},t.prototype.hide=function(t){t&&t.preventDefault(),t=e.Event("hide.bs.modal"),this.$element.trigger(t),this.isShown&&!t.isDefaultPrevented()&&(this.isShown=!1,this.escape(),e(document).off("focusin.bs.modal"),this.$element.removeClass("in").attr("aria-hidden",!0).off("click.dismiss.modal"),e.support.transition&&this.$element.hasClass("fade")?this.$element.one(e.support.transition.end,e.proxy(this.hideModal,this)).emulateTransitionEnd(300):this.hideModal())},t.prototype.enforceFocus=function(){e(document).off("focusin.bs.modal").on("focusin.bs.modal",e.proxy(function(e){this.$element[0]===e.target||this.$element.has(e.target).length||this.$element.focus()},this))},t.prototype.escape=function(){this.isShown&&this.options.keyboard?this.$element.on("keyup.dismiss.bs.modal",e.proxy(function(e){27==e.which&&this.hide()},this)):this.isShown||this.$element.off("keyup.dismiss.bs.modal")},t.prototype.hideModal=function(){var e=this;this.$element.hide(),this.backdrop(function(){e.removeBackdrop(),e.$element.trigger("hidden.bs.modal")})},t.prototype.removeBackdrop=function(){this.$backdrop&&this.$backdrop.remove(),this.$backdrop=null},t.prototype.backdrop=function(t){var n=this.$element.hasClass("fade")?"fade":"";if(this.isShown&&this.options.backdrop){var i=e.support.transition&&n;if(this.$backdrop=e('<div class="modal-backdrop '+n+'" />').appendTo(document.body),this.$element.on("click.dismiss.modal",e.proxy(function(e){e.target===e.currentTarget&&("static"==this.options.backdrop?this.$element[0].focus.call(this.$element[0]):this.hide.call(this))},this)),i&&this.$backdrop[0].offsetWidth,this.$backdrop.addClass("in"),!t)return;i?this.$backdrop.one(e.support.transition.end,t).emulateTransitionEnd(150):t()}else!this.isShown&&this.$backdrop?(this.$backdrop.removeClass("in"),e.support.transition&&this.$element.hasClass("fade")?this.$backdrop.one(e.support.transition.end,t).emulateTransitionEnd(150):t()):t&&t()};var n=e.fn.modal;e.fn.modal=function(n,i){return this.each(function(){var r=e(this),o=r.data("bs.modal"),a=e.extend({},t.DEFAULTS,r.data(),"object"==typeof n&&n);o||r.data("bs.modal",o=new t(this,a)),"string"==typeof n?o[n](i):a.show&&o.show(i)})},e.fn.modal.Constructor=t,e.fn.modal.noConflict=function(){return e.fn.modal=n,this},e(document).on("click.bs.modal.data-api",'[data-toggle="modal"]',function(t){var n=e(this),i=n.attr("href"),r=e(n.attr("data-target")||i&&i.replace(/.*(?=#[^\s]+$)/,"")),o=r.data("modal")?"toggle":e.extend({remote:!/#/.test(i)&&i},r.data(),n.data());t.preventDefault(),r.modal(o,this).one("hide",function(){n.is(":visible")&&n.focus()})}),e(document).on("show.bs.modal",".modal",function(){e(document.body).addClass("modal-open")}).on("hidden.bs.modal",".modal",function(){e(document.body).removeClass("modal-open")})}(jQuery),/* ========================================================================
 * Bootstrap: tooltip.js v3.0.3
 * http://getbootstrap.com/javascript/#tooltip
 * Inspired by the original jQuery.tipsy by Jason Frame
 * ========================================================================
 * Copyright 2013 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(e){"use strict";var t=function(e,t){this.type=this.options=this.enabled=this.timeout=this.hoverState=this.$element=null,this.init("tooltip",e,t)};t.DEFAULTS={animation:!0,placement:"top",selector:!1,template:'<div class="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',trigger:"hover focus",title:"",delay:0,html:!1,container:!1},t.prototype.init=function(t,n,i){this.enabled=!0,this.type=t,this.$element=e(n),this.options=this.getOptions(i);for(var r=this.options.trigger.split(" "),o=r.length;o--;){var a=r[o];if("click"==a)this.$element.on("click."+this.type,this.options.selector,e.proxy(this.toggle,this));else if("manual"!=a){var s="hover"==a?"mouseenter":"focus",l="hover"==a?"mouseleave":"blur";this.$element.on(s+"."+this.type,this.options.selector,e.proxy(this.enter,this)),this.$element.on(l+"."+this.type,this.options.selector,e.proxy(this.leave,this))}}this.options.selector?this._options=e.extend({},this.options,{trigger:"manual",selector:""}):this.fixTitle()},t.prototype.getDefaults=function(){return t.DEFAULTS},t.prototype.getOptions=function(t){return t=e.extend({},this.getDefaults(),this.$element.data(),t),t.delay&&"number"==typeof t.delay&&(t.delay={show:t.delay,hide:t.delay}),t},t.prototype.getDelegateOptions=function(){var t={},n=this.getDefaults();return this._options&&e.each(this._options,function(e,i){n[e]!=i&&(t[e]=i)}),t},t.prototype.enter=function(t){var n=t instanceof this.constructor?t:e(t.currentTarget)[this.type](this.getDelegateOptions()).data("bs."+this.type);return clearTimeout(n.timeout),n.hoverState="in",n.options.delay&&n.options.delay.show?(n.timeout=setTimeout(function(){"in"==n.hoverState&&n.show()},n.options.delay.show),void 0):n.show()},t.prototype.leave=function(t){var n=t instanceof this.constructor?t:e(t.currentTarget)[this.type](this.getDelegateOptions()).data("bs."+this.type);return clearTimeout(n.timeout),n.hoverState="out",n.options.delay&&n.options.delay.hide?(n.timeout=setTimeout(function(){"out"==n.hoverState&&n.hide()},n.options.delay.hide),void 0):n.hide()},t.prototype.show=function(){var t=e.Event("show.bs."+this.type);if(this.hasContent()&&this.enabled){if(this.$element.trigger(t),t.isDefaultPrevented())return;var n=this.tip();this.setContent(),this.options.animation&&n.addClass("fade");var i="function"==typeof this.options.placement?this.options.placement.call(this,n[0],this.$element[0]):this.options.placement,r=/\s?auto?\s?/i,o=r.test(i);o&&(i=i.replace(r,"")||"top"),n.detach().css({top:0,left:0,display:"block"}).addClass(i),this.options.container?n.appendTo(this.options.container):n.insertAfter(this.$element);var a=this.getPosition(),s=n[0].offsetWidth,l=n[0].offsetHeight;if(o){var u=this.$element.parent(),c=i,d=document.documentElement.scrollTop||document.body.scrollTop,p="body"==this.options.container?window.innerWidth:u.outerWidth(),f="body"==this.options.container?window.innerHeight:u.outerHeight(),h="body"==this.options.container?0:u.offset().left;i="bottom"==i&&a.top+a.height+l-d>f?"top":"top"==i&&a.top-d-l<0?"bottom":"right"==i&&a.right+s>p?"left":"left"==i&&a.left-s<h?"right":i,n.removeClass(c).addClass(i)}var g=this.getCalculatedOffset(i,a,s,l);this.applyPlacement(g,i),this.$element.trigger("shown.bs."+this.type)}},t.prototype.applyPlacement=function(e,t){var n,i=this.tip(),r=i[0].offsetWidth,o=i[0].offsetHeight,a=parseInt(i.css("margin-top"),10),s=parseInt(i.css("margin-left"),10);isNaN(a)&&(a=0),isNaN(s)&&(s=0),e.top=e.top+a,e.left=e.left+s,i.offset(e).addClass("in");var l=i[0].offsetWidth,u=i[0].offsetHeight;if("top"==t&&u!=o&&(n=!0,e.top=e.top+o-u),/bottom|top/.test(t)){var c=0;e.left<0&&(c=-2*e.left,e.left=0,i.offset(e),l=i[0].offsetWidth,u=i[0].offsetHeight),this.replaceArrow(c-r+l,l,"left")}else this.replaceArrow(u-o,u,"top");n&&i.offset(e)},t.prototype.replaceArrow=function(e,t,n){this.arrow().css(n,e?50*(1-e/t)+"%":"")},t.prototype.setContent=function(){var e=this.tip(),t=this.getTitle();e.find(".tooltip-inner")[this.options.html?"html":"text"](t),e.removeClass("fade in top bottom left right")},t.prototype.hide=function(){function t(){"in"!=n.hoverState&&i.detach()}var n=this,i=this.tip(),r=e.Event("hide.bs."+this.type);return this.$element.trigger(r),r.isDefaultPrevented()?void 0:(i.removeClass("in"),e.support.transition&&this.$tip.hasClass("fade")?i.one(e.support.transition.end,t).emulateTransitionEnd(150):t(),this.$element.trigger("hidden.bs."+this.type),this)},t.prototype.fixTitle=function(){var e=this.$element;(e.attr("title")||"string"!=typeof e.attr("data-original-title"))&&e.attr("data-original-title",e.attr("title")||"").attr("title","")},t.prototype.hasContent=function(){return this.getTitle()},t.prototype.getPosition=function(){var t=this.$element[0];return e.extend({},"function"==typeof t.getBoundingClientRect?t.getBoundingClientRect():{width:t.offsetWidth,height:t.offsetHeight},this.$element.offset())},t.prototype.getCalculatedOffset=function(e,t,n,i){return"bottom"==e?{top:t.top+t.height,left:t.left+t.width/2-n/2}:"top"==e?{top:t.top-i,left:t.left+t.width/2-n/2}:"left"==e?{top:t.top+t.height/2-i/2,left:t.left-n}:{top:t.top+t.height/2-i/2,left:t.left+t.width}},t.prototype.getTitle=function(){var e,t=this.$element,n=this.options;return e=t.attr("data-original-title")||("function"==typeof n.title?n.title.call(t[0]):n.title)},t.prototype.tip=function(){return this.$tip=this.$tip||e(this.options.template)},t.prototype.arrow=function(){return this.$arrow=this.$arrow||this.tip().find(".tooltip-arrow")},t.prototype.validate=function(){this.$element[0].parentNode||(this.hide(),this.$element=null,this.options=null)},t.prototype.enable=function(){this.enabled=!0},t.prototype.disable=function(){this.enabled=!1},t.prototype.toggleEnabled=function(){this.enabled=!this.enabled},t.prototype.toggle=function(t){var n=t?e(t.currentTarget)[this.type](this.getDelegateOptions()).data("bs."+this.type):this;n.tip().hasClass("in")?n.leave(n):n.enter(n)},t.prototype.destroy=function(){this.hide().$element.off("."+this.type).removeData("bs."+this.type)};var n=e.fn.tooltip;e.fn.tooltip=function(n){return this.each(function(){var i=e(this),r=i.data("bs.tooltip"),o="object"==typeof n&&n;r||i.data("bs.tooltip",r=new t(this,o)),"string"==typeof n&&r[n]()})},e.fn.tooltip.Constructor=t,e.fn.tooltip.noConflict=function(){return e.fn.tooltip=n,this}}(jQuery),/* ========================================================================
 * Bootstrap: popover.js v3.0.3
 * http://getbootstrap.com/javascript/#popovers
 * ========================================================================
 * Copyright 2013 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(e){"use strict";var t=function(e,t){this.init("popover",e,t)};if(!e.fn.tooltip)throw new Error("Popover requires tooltip.js");t.DEFAULTS=e.extend({},e.fn.tooltip.Constructor.DEFAULTS,{placement:"right",trigger:"click",content:"",template:'<div class="popover"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>'}),t.prototype=e.extend({},e.fn.tooltip.Constructor.prototype),t.prototype.constructor=t,t.prototype.getDefaults=function(){return t.DEFAULTS},t.prototype.setContent=function(){var e=this.tip(),t=this.getTitle(),n=this.getContent();e.find(".popover-title")[this.options.html?"html":"text"](t),e.find(".popover-content")[this.options.html?"html":"text"](n),e.removeClass("fade top bottom left right in"),e.find(".popover-title").html()||e.find(".popover-title").hide()},t.prototype.hasContent=function(){return this.getTitle()||this.getContent()},t.prototype.getContent=function(){var e=this.$element,t=this.options;return e.attr("data-content")||("function"==typeof t.content?t.content.call(e[0]):t.content)},t.prototype.arrow=function(){return this.$arrow=this.$arrow||this.tip().find(".arrow")},t.prototype.tip=function(){return this.$tip||(this.$tip=e(this.options.template)),this.$tip};var n=e.fn.popover;e.fn.popover=function(n){return this.each(function(){var i=e(this),r=i.data("bs.popover"),o="object"==typeof n&&n;r||i.data("bs.popover",r=new t(this,o)),"string"==typeof n&&r[n]()})},e.fn.popover.Constructor=t,e.fn.popover.noConflict=function(){return e.fn.popover=n,this}}(jQuery),/* ========================================================================
 * Bootstrap: scrollspy.js v3.0.3
 * http://getbootstrap.com/javascript/#scrollspy
 * ========================================================================
 * Copyright 2013 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(e){"use strict";function t(n,i){var r,o=e.proxy(this.process,this);this.$element=e(n).is("body")?e(window):e(n),this.$body=e("body"),this.$scrollElement=this.$element.on("scroll.bs.scroll-spy.data-api",o),this.options=e.extend({},t.DEFAULTS,i),this.selector=(this.options.target||(r=e(n).attr("href"))&&r.replace(/.*(?=#[^\s]+$)/,"")||"")+" .nav li > a",this.offsets=e([]),this.targets=e([]),this.activeTarget=null,this.refresh(),this.process()}t.DEFAULTS={offset:10},t.prototype.refresh=function(){var t=this.$element[0]==window?"offset":"position";this.offsets=e([]),this.targets=e([]);{var n=this;this.$body.find(this.selector).map(function(){var i=e(this),r=i.data("target")||i.attr("href"),o=/^#\w/.test(r)&&e(r);return o&&o.length&&[[o[t]().top+(!e.isWindow(n.$scrollElement.get(0))&&n.$scrollElement.scrollTop()),r]]||null}).sort(function(e,t){return e[0]-t[0]}).each(function(){n.offsets.push(this[0]),n.targets.push(this[1])})}},t.prototype.process=function(){var e,t=this.$scrollElement.scrollTop()+this.options.offset,n=this.$scrollElement[0].scrollHeight||this.$body[0].scrollHeight,i=n-this.$scrollElement.height(),r=this.offsets,o=this.targets,a=this.activeTarget;if(t>=i)return a!=(e=o.last()[0])&&this.activate(e);for(e=r.length;e--;)a!=o[e]&&t>=r[e]&&(!r[e+1]||t<=r[e+1])&&this.activate(o[e])},t.prototype.activate=function(t){this.activeTarget=t,e(this.selector).parents(".active").removeClass("active");var n=this.selector+'[data-target="'+t+'"],'+this.selector+'[href="'+t+'"]',i=e(n).parents("li").addClass("active");i.parent(".dropdown-menu").length&&(i=i.closest("li.dropdown").addClass("active")),i.trigger("activate.bs.scrollspy")};var n=e.fn.scrollspy;e.fn.scrollspy=function(n){return this.each(function(){var i=e(this),r=i.data("bs.scrollspy"),o="object"==typeof n&&n;r||i.data("bs.scrollspy",r=new t(this,o)),"string"==typeof n&&r[n]()})},e.fn.scrollspy.Constructor=t,e.fn.scrollspy.noConflict=function(){return e.fn.scrollspy=n,this},e(window).on("load",function(){e('[data-spy="scroll"]').each(function(){var t=e(this);t.scrollspy(t.data())})})}(jQuery),/* ========================================================================
 * Bootstrap: tab.js v3.0.3
 * http://getbootstrap.com/javascript/#tabs
 * ========================================================================
 * Copyright 2013 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(e){"use strict";var t=function(t){this.element=e(t)};t.prototype.show=function(){var t=this.element,n=t.closest("ul:not(.dropdown-menu)"),i=t.data("target");if(i||(i=t.attr("href"),i=i&&i.replace(/.*(?=#[^\s]*$)/,"")),!t.parent("li").hasClass("active")){var r=n.find(".active:last a")[0],o=e.Event("show.bs.tab",{relatedTarget:r});if(t.trigger(o),!o.isDefaultPrevented()){var a=e(i);this.activate(t.parent("li"),n),this.activate(a,a.parent(),function(){t.trigger({type:"shown.bs.tab",relatedTarget:r})})}}},t.prototype.activate=function(t,n,i){function r(){o.removeClass("active").find("> .dropdown-menu > .active").removeClass("active"),t.addClass("active"),a?(t[0].offsetWidth,t.addClass("in")):t.removeClass("fade"),t.parent(".dropdown-menu")&&t.closest("li.dropdown").addClass("active"),i&&i()}var o=n.find("> .active"),a=i&&e.support.transition&&o.hasClass("fade");a?o.one(e.support.transition.end,r).emulateTransitionEnd(150):r(),o.removeClass("in")};var n=e.fn.tab;e.fn.tab=function(n){return this.each(function(){var i=e(this),r=i.data("bs.tab");r||i.data("bs.tab",r=new t(this)),"string"==typeof n&&r[n]()})},e.fn.tab.Constructor=t,e.fn.tab.noConflict=function(){return e.fn.tab=n,this},e(document).on("click.bs.tab.data-api",'[data-toggle="tab"], [data-toggle="pill"]',function(t){t.preventDefault(),e(this).tab("show")})}(jQuery),/* ========================================================================
 * Bootstrap: affix.js v3.0.3
 * http://getbootstrap.com/javascript/#affix
 * ========================================================================
 * Copyright 2013 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(e){"use strict";var t=function(n,i){this.options=e.extend({},t.DEFAULTS,i),this.$window=e(window).on("scroll.bs.affix.data-api",e.proxy(this.checkPosition,this)).on("click.bs.affix.data-api",e.proxy(this.checkPositionWithEventLoop,this)),this.$element=e(n),this.affixed=this.unpin=null,this.checkPosition()};t.RESET="affix affix-top affix-bottom",t.DEFAULTS={offset:0},t.prototype.checkPositionWithEventLoop=function(){setTimeout(e.proxy(this.checkPosition,this),1)},t.prototype.checkPosition=function(){if(this.$element.is(":visible")){var n=e(document).height(),i=this.$window.scrollTop(),r=this.$element.offset(),o=this.options.offset,a=o.top,s=o.bottom;"object"!=typeof o&&(s=a=o),"function"==typeof a&&(a=o.top()),"function"==typeof s&&(s=o.bottom());var l=null!=this.unpin&&i+this.unpin<=r.top?!1:null!=s&&r.top+this.$element.height()>=n-s?"bottom":null!=a&&a>=i?"top":!1;this.affixed!==l&&(this.unpin&&this.$element.css("top",""),this.affixed=l,this.unpin="bottom"==l?r.top-i:null,this.$element.removeClass(t.RESET).addClass("affix"+(l?"-"+l:"")),"bottom"==l&&this.$element.offset({top:document.body.offsetHeight-s-this.$element.height()}))}};var n=e.fn.affix;e.fn.affix=function(n){return this.each(function(){var i=e(this),r=i.data("bs.affix"),o="object"==typeof n&&n;r||i.data("bs.affix",r=new t(this,o)),"string"==typeof n&&r[n]()})},e.fn.affix.Constructor=t,e.fn.affix.noConflict=function(){return e.fn.affix=n,this},e(window).on("load",function(){e('[data-spy="affix"]').each(function(){var t=e(this),n=t.data();n.offset=n.offset||{},n.offsetBottom&&(n.offset.bottom=n.offsetBottom),n.offsetTop&&(n.offset.top=n.offsetTop),t.affix(n)})})}(jQuery);