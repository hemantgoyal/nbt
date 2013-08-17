window.Modernizr=function(t,e,i){function n(t){f.cssText=t}function s(t,e){return typeof t===e}var o,r,a,l="2.6.2",c={},d=!0,u=e.documentElement,h="modernizr",p=e.createElement(h),f=p.style,m={}.toString,g=" -webkit- -moz- -o- -ms- ".split(" "),_={svg:"http://www.w3.org/2000/svg"},v={},b=[],y=b.slice,w=function(t,i,n,s){var o,r,a,l,c=e.createElement("div"),d=e.body,p=d||e.createElement("body");if(parseInt(n,10))for(;n--;)a=e.createElement("div"),a.id=s?s[n]:h+(n+1),c.appendChild(a);return o=["&#173;",'<style id="s',h,'">',t,"</style>"].join(""),c.id=h,(d?c:p).innerHTML+=o,p.appendChild(c),d||(p.style.background="",p.style.overflow="hidden",l=u.style.overflow,u.style.overflow="hidden",u.appendChild(p)),r=i(c,t),d?c.parentNode.removeChild(c):(p.parentNode.removeChild(p),u.style.overflow=l),!!r},x=function(e){var i=t.matchMedia||t.msMatchMedia;if(i)return i(e).matches;var n;return w("@media "+e+" { #"+h+" { position: absolute; } }",function(e){n="absolute"==(t.getComputedStyle?getComputedStyle(e,null):e.currentStyle).position}),n},C={}.hasOwnProperty;a=s(C,"undefined")||s(C.call,"undefined")?function(t,e){return e in t&&s(t.constructor.prototype[e],"undefined")}:function(t,e){return C.call(t,e)},Function.prototype.bind||(Function.prototype.bind=function(t){var e=this;if("function"!=typeof e)throw new TypeError;var i=y.call(arguments,1),n=function(){if(this instanceof n){var s=function(){};s.prototype=e.prototype;var o=new s,r=e.apply(o,i.concat(y.call(arguments)));return Object(r)===r?r:o}return e.apply(t,i.concat(y.call(arguments)))};return n}),v.touch=function(){var i;return"ontouchstart"in t||t.DocumentTouch&&e instanceof DocumentTouch?i=!0:w(["@media (",g.join("touch-enabled),("),h,")","{#modernizr{top:9px;position:absolute}}"].join(""),function(t){i=9===t.offsetTop}),i},v.svg=function(){return!!e.createElementNS&&!!e.createElementNS(_.svg,"svg").createSVGRect},v.inlinesvg=function(){var t=e.createElement("div");return t.innerHTML="<svg/>",(t.firstChild&&t.firstChild.namespaceURI)==_.svg},v.svgclippaths=function(){return!!e.createElementNS&&/SVGClipPath/.test(m.call(e.createElementNS(_.svg,"clipPath")))};for(var k in v)a(v,k)&&(r=k.toLowerCase(),c[r]=v[k](),b.push((c[r]?"":"no-")+r));return c.addTest=function(t,e){if("object"==typeof t)for(var n in t)a(t,n)&&c.addTest(n,t[n]);else{if(t=t.toLowerCase(),c[t]!==i)return c;e="function"==typeof e?e():e,"undefined"!=typeof d&&d&&(u.className+=" "+(e?"":"no-")+t),c[t]=e}return c},n(""),p=o=null,function(t,e){function i(t,e){var i=t.createElement("p"),n=t.getElementsByTagName("head")[0]||t.documentElement;return i.innerHTML="x<style>"+e+"</style>",n.insertBefore(i.lastChild,n.firstChild)}function n(){var t=_.elements;return"string"==typeof t?t.split(" "):t}function s(t){var e=g[t[f]];return e||(e={},m++,t[f]=m,g[m]=e),e}function o(t,i,n){if(i||(i=e),d)return i.createElement(t);n||(n=s(i));var o;return o=n.cache[t]?n.cache[t].cloneNode():p.test(t)?(n.cache[t]=n.createElem(t)).cloneNode():n.createElem(t),o.canHaveChildren&&!h.test(t)?n.frag.appendChild(o):o}function r(t,i){if(t||(t=e),d)return t.createDocumentFragment();i=i||s(t);for(var o=i.frag.cloneNode(),r=0,a=n(),l=a.length;l>r;r++)o.createElement(a[r]);return o}function a(t,e){e.cache||(e.cache={},e.createElem=t.createElement,e.createFrag=t.createDocumentFragment,e.frag=e.createFrag()),t.createElement=function(i){return _.shivMethods?o(i,t,e):e.createElem(i)},t.createDocumentFragment=Function("h,f","return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&("+n().join().replace(/\w+/g,function(t){return e.createElem(t),e.frag.createElement(t),'c("'+t+'")'})+");return n}")(_,e.frag)}function l(t){t||(t=e);var n=s(t);return _.shivCSS&&!c&&!n.hasCSS&&(n.hasCSS=!!i(t,"article,aside,figcaption,figure,footer,header,hgroup,nav,section{display:block}mark{background:#FF0;color:#000}")),d||a(t,n),t}var c,d,u=t.html5||{},h=/^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i,p=/^(?:a|b|code|div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|style|table|tbody|td|th|tr|ul)$/i,f="_html5shiv",m=0,g={};!function(){try{var t=e.createElement("a");t.innerHTML="<xyz></xyz>",c="hidden"in t,d=1==t.childNodes.length||function(){e.createElement("a");var t=e.createDocumentFragment();return"undefined"==typeof t.cloneNode||"undefined"==typeof t.createDocumentFragment||"undefined"==typeof t.createElement}()}catch(i){c=!0,d=!0}}();var _={elements:u.elements||"abbr article aside audio bdi canvas data datalist details figcaption figure footer header hgroup mark meter nav output progress section summary time video",shivCSS:u.shivCSS!==!1,supportsUnknownElements:d,shivMethods:u.shivMethods!==!1,type:"default",shivDocument:l,createElement:o,createDocumentFragment:r};t.html5=_,l(e)}(this,e),c._version=l,c._prefixes=g,c.mq=x,c.testStyles=w,u.className=u.className.replace(/(^|\s)no-js(\s|$)/,"$1$2")+(d?" js "+b.join(" "):""),c}(this,this.document),function(t,e,i){function n(t){return"[object Function]"==g.call(t)}function s(t){return"string"==typeof t}function o(){}function r(t){return!t||"loaded"==t||"complete"==t||"uninitialized"==t}function a(){var t=_.shift();v=1,t?t.t?f(function(){("c"==t.t?h.injectCss:h.injectJs)(t.s,0,t.a,t.x,t.e,1)},0):(t(),a()):v=0}function l(t,i,n,s,o,l,c){function d(e){if(!p&&r(u.readyState)&&(b.r=p=1,!v&&a(),u.onload=u.onreadystatechange=null,e)){"img"!=t&&f(function(){w.removeChild(u)},50);for(var n in S[i])S[i].hasOwnProperty(n)&&S[i][n].onload()}}var c=c||h.errorTimeout,u=e.createElement(t),p=0,g=0,b={t:n,s:i,e:o,a:l,x:c};1===S[i]&&(g=1,S[i]=[]),"object"==t?u.data=i:(u.src=i,u.type=t),u.width=u.height="0",u.onerror=u.onload=u.onreadystatechange=function(){d.call(this,g)},_.splice(s,0,b),"img"!=t&&(g||2===S[i]?(w.insertBefore(u,y?null:m),f(d,c)):S[i].push(u))}function c(t,e,i,n,o){return v=0,e=e||"j",s(t)?l("c"==e?C:x,t,e,this.i++,i,n,o):(_.splice(this.i++,0,t),1==_.length&&a()),this}function d(){var t=h;return t.loader={load:c,i:0},t}var u,h,p=e.documentElement,f=t.setTimeout,m=e.getElementsByTagName("script")[0],g={}.toString,_=[],v=0,b="MozAppearance"in p.style,y=b&&!!e.createRange().compareNode,w=y?p:m.parentNode,p=t.opera&&"[object Opera]"==g.call(t.opera),p=!!e.attachEvent&&!p,x=b?"object":p?"script":"img",C=p?"script":x,k=Array.isArray||function(t){return"[object Array]"==g.call(t)},T=[],S={},$={timeout:function(t,e){return e.length&&(t.timeout=e[0]),t}};h=function(t){function e(t){var e,i,n,t=t.split("!"),s=T.length,o=t.pop(),r=t.length,o={url:o,origUrl:o,prefixes:t};for(i=0;r>i;i++)n=t[i].split("="),(e=$[n.shift()])&&(o=e(o,n));for(i=0;s>i;i++)o=T[i](o);return o}function r(t,s,o,r,a){var l=e(t),c=l.autoCallback;l.url.split(".").pop().split("?").shift(),l.bypass||(s&&(s=n(s)?s:s[t]||s[r]||s[t.split("/").pop().split("?")[0]]),l.instead?l.instead(t,s,o,r,a):(S[l.url]?l.noexec=!0:S[l.url]=1,o.load(l.url,l.forceCSS||!l.forceJS&&"css"==l.url.split(".").pop().split("?").shift()?"c":i,l.noexec,l.attrs,l.timeout),(n(s)||n(c))&&o.load(function(){d(),s&&s(l.origUrl,a,r),c&&c(l.origUrl,a,r),S[l.url]=2})))}function a(t,e){function i(t,i){if(t){if(s(t))i||(u=function(){var t=[].slice.call(arguments);h.apply(this,t),p()}),r(t,u,e,0,c);else if(Object(t)===t)for(l in a=function(){var e,i=0;for(e in t)t.hasOwnProperty(e)&&i++;return i}(),t)t.hasOwnProperty(l)&&(!i&&!--a&&(n(u)?u=function(){var t=[].slice.call(arguments);h.apply(this,t),p()}:u[l]=function(t){return function(){var e=[].slice.call(arguments);t&&t.apply(this,e),p()}}(h[l])),r(t[l],u,e,l,c))}else!i&&p()}var a,l,c=!!t.test,d=t.load||t.both,u=t.callback||o,h=u,p=t.complete||o;i(c?t.yep:t.nope,!!d),d&&i(d)}var l,c,u=this.yepnope.loader;if(s(t))r(t,0,u,0);else if(k(t))for(l=0;l<t.length;l++)c=t[l],s(c)?r(c,0,u,0):k(c)?h(c):Object(c)===c&&a(c,u);else Object(t)===t&&a(t,u)},h.addPrefix=function(t,e){$[t]=e},h.addFilter=function(t){T.push(t)},h.errorTimeout=1e4,null==e.readyState&&e.addEventListener&&(e.readyState="loading",e.addEventListener("DOMContentLoaded",u=function(){e.removeEventListener("DOMContentLoaded",u,0),e.readyState="complete"},0)),t.yepnope=d(),t.yepnope.executeStack=a,t.yepnope.injectJs=function(t,i,n,s,l,c){var d,u,p=e.createElement("script"),s=s||h.errorTimeout;p.src=t;for(u in n)p.setAttribute(u,n[u]);i=c?a:i||o,p.onreadystatechange=p.onload=function(){!d&&r(p.readyState)&&(d=1,i(),p.onload=p.onreadystatechange=null)},f(function(){d||(d=1,i(1))},s),l?p.onload():m.parentNode.insertBefore(p,m)},t.yepnope.injectCss=function(t,i,n,s,r,l){var c,s=e.createElement("link"),i=l?a:i||o;s.href=t,s.rel="stylesheet",s.type="text/css";for(c in n)s.setAttribute(c,n[c]);r||(m.parentNode.insertBefore(s,m),f(i,0))}}(this,document),Modernizr.load=function(){yepnope.apply(window,[].slice.call(arguments,0))},Modernizr.addTest("ie8compat",function(){return!window.addEventListener&&document.documentMode&&7===document.documentMode});