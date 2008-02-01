scripting
initScriptFor: moveId container: containerId
^'function initializemarquee(){
cross_marquee=$("',moveId,'")
cross_marquee.style.top=0
marqueeheight=$("',containerId,'").offsetHeight
actualheight=cross_marquee.offsetHeight
setTimeout(''lefttime=setInterval("scrollmarquee()",30)'', delayb4scroll)
}'