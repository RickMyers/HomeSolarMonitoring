/*
 * Default basic functionality for entire system, if you choose to use it
 * 
 * Video: https://humbleprogramming.com/pages/BasicJavascript.htmls
 */
var Monitor = ((callback) => {
    return {
        init: () => {
            var me = this;
            (new EasyAjax('/paradigm/templates/fetch')).then((response) => { //replace with fetch api for compatibility
                var tpls = JSON.parse(response);
                if (tpls) {
                    for (var namespace in tpls) {
                        templates[namespace] = {};
                        for (var template in tpls[namespace]) {
                            templates[namespace][template] = tpls[namespace][template];
                        }
                    }
                }
                if (callback) {
                    callback.apply(me);
                }
                for (var namespace in Monitor) {
                    if (monitor[namespace].init) {
                        monitor[namespace].init();
                    }
                }          
            }).get();            
            //first we call any Javascripts modules initializers
        },
        RTC: () => {
            //Then we let the module set up the sockets/WebRTC listeners.  Must have a connection though...
            for (var namespace in Monitor) {
                if (monitor[namespace].RTC) {
                    monitor[namespace].RTC();
                }
            }          
        }
    }
})();
