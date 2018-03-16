

var widget461334 = {};
//widget461334.dstl = document.createElement('script');
//widget461334.dstl.type = 'text/javascript';
//widget461334.dstl.async = true;
//widget461334.dstl.src = "https://cdn.distiltag.com/api/v1/defense/script/pgaqWZ3qNz7ADt9KwF3gkQeXAHv7yF8vyt4s6DkQ?AYAH_F2=luvze.com&AYAH_F3=461334&AYAH_P1=2018031613_83bae4c00876aee9702b8fe5d9a0a09c&AYAH_P2=d43c962ae1c3cdb76be6ebbf6881294ef79e295d22bcc71028c83fe897f06ac4";
//document.getElementsByTagName("head")[0].appendChild(widget461334.dstl);
                        
widget461334.scriptUrl = "http://api.content-ad.net/Scripts/widget2.aspx?id=2791dbd5-df15-423a-a468-8754b79dd9d0&d=bHV2emUuY29t&wid=461334&cb=1521232522561";
widget461334.b64={key:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",decode:function(input){var output="";var chr1,chr2,chr3;var enc1,enc2,enc3,enc4;var i=0;input=input.replace(/[^A-Za-z0-9\+\/\=]/g,"");while(i<input.length){enc1=this.key.indexOf(input.charAt(i++));enc2=this.key.indexOf(input.charAt(i++));enc3=this.key.indexOf(input.charAt(i++));enc4=this.key.indexOf(input.charAt(i++));chr1=(enc1<<2)|(enc2>>4);chr2=((enc2&15)<<4)|(enc3>>2);chr3=((enc3&3)<<6)|enc4;output=output+String.fromCharCode(chr1);if(enc3!=64){output=output+String.fromCharCode(chr2)}if(enc4!=64){output=output+String.fromCharCode(chr3)}}return output}};
widget461334.readCookie = function (name) {
    var nameWithEqual = name + "=";
    var params = document.cookie.split(';');
    for(var i = 0; i < params.length; i++) {
        var nameValuePair = params[i];
        while (nameValuePair.charAt(0) == ' ') nameValuePair = nameValuePair.substring(1, nameValuePair.length);
        if (nameValuePair.indexOf(nameWithEqual) == 0) return nameValuePair.substring(nameWithEqual.length, nameValuePair.length);
    }
    return null;
};

widget461334.updateSourceCookie = function (name, value) {
    var d = new Date();
    d.setTime(d.getTime() + (30*60*1000));
    document.cookie = name + "=" + value + ";path=/;expires=" + d.toUTCString();
};

widget461334.params = (function () {
    var result = {}, queryString = widget461334.scriptUrl.substring(widget461334.scriptUrl.indexOf("?")+1), re = /([^&=]+)=([^&]*)/g, m;
    while (m = re.exec(queryString)) {
        result[decodeURIComponent(m[1])] = decodeURIComponent(m[2]);
    }

    var scriptUrlFromDomain = widget461334.scriptUrl.substr(widget461334.scriptUrl.indexOf("://") + 3);
    var server = scriptUrlFromDomain.substr(0, scriptUrlFromDomain.indexOf("/"));
    var url = result["url"] ? decodeURIComponent(result["url"]) : decodeURIComponent(window.location);
    
    result["lazyLoad"] = (result["lazyLoad"] == true ? true : false);
    result["server"] = (result["test"] == true ? "test." + server : server);
    if (result["server"].indexOf(widget461334.b64.decode("YXBpLmNvbnRlbnQuYWQ=")) > -1) {
        result["server"] = widget461334.b64.decode("YXBpLmNvbnRlbnQtYWQubmV0");
    }
    result["title"] = (result["title"] ? result["title"] : encodeURI(escape(document.title)));
    result["url"] = encodeURIComponent(url);
    result["ik"] = encodeURI("2018031613_83bae4c00876aee9702b8fe5d9a0a09c");
    result["ikb"] = encodeURI("83bae4c00876aee9702b8fe5d9a0a09c");
    result["duid"] = encodeURI("d43c962ae1c3cdb76be6ebbf6881294ef79e295d22bcc71028c83fe897f06ac4");
    result["ls"] = encodeURI("ip-172-18-61-186");

    if (result["pre"] != undefined) {
        result["pre"] = encodeURIComponent(result["pre"]);
    }

    if (result["clientId"] === undefined && result["clientId2"] === undefined) {
        var pageParams = {}, pageQueryString = url.substring(url.indexOf("?")+1), pm;
	    while (pm = re.exec(pageQueryString)) {
	        pageParams[decodeURIComponent(pm[1])] = decodeURIComponent(pm[2]);
	    }
	    
	    var source = widget461334.readCookie("source");
	    var campaign = widget461334.readCookie("campaign");
        if (pageParams["utm_source"] !== undefined && pageParams["utm_source"] !== "") {
            if (pageParams["utm_source"] !== source) {
                widget461334.updateSourceCookie("source", pageParams["utm_source"]);
            }
            result["clientId"] = pageParams["utm_source"];
        } else if (source !== null && source !== "") {
            result["clientId"] = source;
        }

        if (pageParams["utm_campaign"] !== undefined && pageParams["utm_campaign"] !== "") {
            if (pageParams["utm_campaign"] !== campaign) {
                widget461334.updateSourceCookie("campaign", pageParams["utm_campaign"]);
            }
            result["clientId2"] = pageParams["utm_campaign"];
        } else if (campaign !== null && campaign !== "") {
            result["clientId2"] = campaign;
        }
    }
    return result;
} ());

widget461334.paramList = [];
for (var key in widget461334.params) {
    widget461334.paramList.push(key + '=' + widget461334.params[key]);
}

widget461334.widgetUrl = (location.protocol === 'https:' ? 'https:' : 'http:') + "//" + widget461334.params.server + "/GetWidget.aspx?" + widget461334.paramList.join('&');
widget461334.isLoaded = false;

widget461334.init = function (widgetId, widgetUrl, lazyLoad, loadMultiple) {
    if (typeof (window["contentAd" + widgetId]) == 'undefined') {
        if (!widget461334.isLoaded) {
            widget461334.isLoaded = true;
            if (lazyLoad) {
                (function () {
                    function asyncLoad() {
                        var s = document.createElement('script');
                        s.type = 'text/javascript';
                        s.async = true;
                        s.src = widgetUrl;
                        var x = document.getElementsByTagName('script')[0];
                        x.parentNode.insertBefore(s, x);
                    }
                    if (window.attachEvent)
                        window.attachEvent('onload', asyncLoad);
                    else
                        window.addEventListener('load', asyncLoad, false);
                })();
            } else {
                (function () {
                    var s = document.createElement('script');
                    s.type = 'text/javascript';
                    s.async = true;
                    s.src = widgetUrl;
                    var x = document.getElementsByTagName('script')[0];
                    x.parentNode.insertBefore(s, x);
                })();
            }
        }
        setTimeout(function () { widget461334.init(widgetId, widgetUrl, lazyLoad, loadMultiple) }, 50);
    } else {
        var content = window["contentAd" + widgetId]();
        var container = document.getElementById(widget461334.b64.decode("Y29udGVudGFk") + widgetId);
        var newDiv = document.createElement("div");
        newDiv.innerHTML = content;
        if (container === undefined || container === null) {
            var scripts = document.getElementsByTagName("script");
		    for (var i = 0; i < scripts.length; i++) {
			    if (scripts[i].innerHTML !== undefined && scripts[i].innerHTML.toLowerCase().indexOf("2791dbd5-df15-423a-a468-8754b79dd9d0") !== -1) {
			        scripts[i].parentNode.insertBefore(newDiv, scripts[i]);
			    }
	        }
        } else {            
            container.parentNode.insertBefore(newDiv, container);
        }
        
        if (typeof (window["initJQuery" + widgetId]) != 'undefined') {
            window["initJQuery" + widgetId]();
        }
        if (loadMultiple) {
            window["contentAd" + widgetId] = undefined;
        }
        
        if (typeof (window["widget" + widgetId]) != 'undefined' && typeof (window["widget" + widgetId].customPlacement) != 'undefined') {
            if (typeof (window["widget" + widgetId].renderCustomStyleAndHtml) != 'undefined') {
	            widget461334.customContent = window["widget" + widgetId].renderCustomStyleAndHtml();
	            widget461334.customContainer = document.createElement("div");
	            widget461334.customContainer.innerHTML = widget461334.customContent;
	            
	            if (window["widget" + widgetId].customPlacement() === 'top') {
	                newDiv.parentNode.insertBefore(widget461334.customContainer, newDiv);
	            } else {
	                newDiv.parentNode.insertBefore(widget461334.customContainer, newDiv.nextSibling);
	            }
            }
            
            if (typeof (window["widget" + widgetId].renderCustomScript) != 'undefined') {
                widget461334.customScript = window["widget" + widgetId].renderCustomScript();
                widget461334.customScriptTag = document.createElement("script");
                widget461334.customScriptTag.innerHTML = widget461334.customScript;
                
                widget461334.documentWrite = document.write;
                widget461334.customScriptOutput = document.createElement("div");
                widget461334.customScriptOutput.innerHTML = '';
				document.write = function(line) {
				    widget461334.customScriptOutput.innerHTML += line;
				}
				
                if (window["widget" + widgetId].customPlacement() === 'top') {
                    newDiv.parentNode.insertBefore(widget461334.customScriptTag, newDiv);
                    newDiv.parentNode.insertBefore(widget461334.customScriptOutput, newDiv);
                } else {
                    if (typeof (window["widget" + widgetId].renderCustomStyleAndHtml) != 'undefined') {
                        newDiv.parentNode.insertBefore(widget461334.customScriptTag, newDiv.nextSibling.nextSibling);
                        newDiv.parentNode.insertBefore(widget461334.customScriptOutput, newDiv.nextSibling.nextSibling);
                    } else {
                        newDiv.parentNode.insertBefore(widget461334.customScriptTag, newDiv.nextSibling);
                        newDiv.parentNode.insertBefore(widget461334.customScriptOutput, newDiv.nextSibling);
                    }                
                }
                
                document.write = widget461334.documentWrite;
            }
        }
    }
};

widget461334.updatePopCookie = function () {
    if (document.cookie.indexOf("popdays") == -1) {
        var d = new Date();
        if (widget461334.params.exitPopExpireDays === undefined) {
            widget461334.params.exitPopExpireDays = 0;
            d.setTime(d.getTime() + (30*60*1000));
        } else {
            d.setTime(d.getTime() + (widget461334.params.exitPopExpireDays*24*60*60*1000));
        }
        document.cookie = "popdays=" + widget461334.params.exitPopExpireDays + ";path=/;expires=" + d.toUTCString();

        widget461334.init(widget461334.params.wid, widget461334.widgetUrl, widget461334.params.lazyLoad, widget461334.params.loadMultiple);
    } else {
        if (widget461334.params.exitPopExpireDays > 0 && widget461334.readCookie("popdays") != widget461334.params.exitPopExpireDays) {
            var d = new Date();
            d.setTime(d.getTime() + (widget461334.params.exitPopExpireDays*24*60*60*1000));
            document.cookie = "popdays=" + widget461334.params.exitPopExpireDays + ";path=/;expires=" + d.toUTCString();
        } else if (widget461334.params.exitPopExpireDays <= 0) {
            document.cookie = "popdays=-1;path=/;expires=Thu, 01 Jan 1970 00:00:01 GMT";
            widget461334.init(widget461334.params.wid, widget461334.widgetUrl, widget461334.params.lazyLoad, widget461334.params.loadMultiple);
        } else if (widget461334.params.exitPopExpireDays === undefined && widget461334.readCookie("popdays") > 0) {
            var d = new Date();
            d.setTime(d.getTime() + (30*60*1000));
            document.cookie = "popdays=0;path=/;expires=" + d.toUTCString();
        }
    }
};

widget461334.scrollChange = function () {
    var totalHeight, currentScroll, visibleHeight;
      
    if (document.documentElement.scrollTop) {
        currentScroll = document.documentElement.scrollTop;
    } else { 
        currentScroll = document.body.scrollTop;
    }
      
    totalHeight = document.body.offsetHeight;
    visibleHeight = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
    var tempScroll = currentScroll + visibleHeight;
    var atEndOfPage = totalHeight <= tempScroll + (totalHeight * 0.10);
    var isScrollingUp = tempScroll < widget461334.lowestScroll;
    var hasScrolledDown = widget461334.lowestScroll > 100;
    
    if (widget461334.lowestScroll === undefined || tempScroll > widget461334.lowestScroll) {
        widget461334.lowestScroll = tempScroll;
    }

    if ((atEndOfPage || (hasScrolledDown && isScrollingUp)) && !widget461334.isLoaded) {
        widget461334.updatePopCookie();
    }
};

widget461334.mouseCoordinates = function (e) {
    var tempX = 0, tempY = 0;

    if (!e) var e = window.event;
    tempX = e.clientX;
    tempY = e.clientY;
        
    if (tempX < 0) tempX = 0;
    if (tempY < 0) tempY = 0;
    
    if (widget461334.lowestY === undefined || tempY > widget461334.lowestY) {
        widget461334.lowestY = tempY;
    }
    
    if (tempY <= 20 && tempY < widget461334.lowestY && widget461334.lowestY > 100 && !widget461334.isLoaded) {
        widget461334.updatePopCookie();
    }
};

widget461334.exitPopMobile = false;
if (widget461334.params.exitPopMobile === 'true' || widget461334.params.exitPopMobile === '1') {
    widget461334.exitPopMobile = true;
    var touchEnabled = ('ontouchstart' in window) || (window.DocumentTouch && document instanceof DocumentTouch);
    var isMobile = false;
    if (navigator.userAgent !== undefined) {
        var userAgent = navigator.userAgent.toLowerCase();
        var iPhoneIndex = userAgent.indexOf("iphone");
        var iPadIndex = userAgent.indexOf("ipad");
        var isIPhone = (iPhoneIndex !== -1 && iPadIndex === -1) || (iPhoneIndex !== -1 && iPhoneIndex < iPadIndex);
        var isAndroid = userAgent.indexOf("android") !== -1 && userAgent.indexOf("mobile") !== -1;
        var isOtherMobile = userAgent.match(/^.*?(ipod|blackberry|mini|windows\\sce|palm|phone|mobile|smartphone|iemobile).*?$/) != null;
        isMobile = isIPhone || isAndroid || isOtherMobile;
    }
    
    if (touchEnabled && isMobile) {
        setInterval(widget461334.scrollChange, 50);
    }
}

widget461334.exitPop = false;
if (widget461334.params.exitPop === 'true' || widget461334.params.exitPop === '1') {
    widget461334.exitPop = true;
    if (widget461334.params.exitPopExpireDays === undefined && widget461334.readCookie("popdays") == 0) {
        var d = new Date();
        d.setTime(d.getTime() + (30*60*1000));
        document.cookie = "popdays=0;path=/;expires=" + d.toUTCString();
    }
    var isInternetExplorer = document.all ? true : false;
    if (!isInternetExplorer) document.captureEvents(Event.MOUSEMOVE);
    try {
        document.addEventListener('mousemove', widget461334.mouseCoordinates, false);
    } catch (e) {
        document.attachEvent('onmousemove', widget461334.mouseCoordinates);
    } finally {
        try {
            if (document.onmousemove) {
                var oldOnMouseMove = document.onmousemove;
                document.onmousemove = function(e) {
                    oldOnMouseMove(e);
                    widget461334.mouseCoordinates(e);
                };
            } else {
                document.onmousemove = function(e) {
                   widget461334.mouseCoordinates(e);
                };
            }
        } catch(e) {
        
        }
    }
} 

if (!widget461334.exitPop && !widget461334.exitPopMobile) {
    widget461334.init(widget461334.params.wid, widget461334.widgetUrl, widget461334.params.lazyLoad, widget461334.params.loadMultiple);
}