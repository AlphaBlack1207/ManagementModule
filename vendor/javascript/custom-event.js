// custom-event@1.0.1 downloaded from https://ga.jspm.io/npm:custom-event@1.0.1/index.js

var e="undefined"!==typeof globalThis?globalThis:"undefined"!==typeof self?self:global;var t={};var a=e.CustomEvent;function useNative(){try{var e=new a("cat",{detail:{foo:"bar"}});return"cat"===e.type&&"bar"===e.detail.foo}catch(e){}return false}t=useNative()?a:"undefined"!==typeof document&&"function"===typeof document.createEvent?function CustomEvent(e,t){var a=document.createEvent("CustomEvent");t?a.initCustomEvent(e,t.bubbles,t.cancelable,t.detail):a.initCustomEvent(e,false,false,void 0);return a}:function CustomEvent(e,t){var a=document.createEventObject();a.type=e;if(t){a.bubbles=Boolean(t.bubbles);a.cancelable=Boolean(t.cancelable);a.detail=t.detail}else{a.bubbles=false;a.cancelable=false;a.detail=void 0}return a};var n=t;export default n;

