scripting
scrollScript
^'function scrollmarquee(){
if (!stop)
{if (parseInt(cross_marquee.style.top)>(actualheight*(-1)+8))
{cross_marquee.style.top=parseInt(cross_marquee.style.top)-speed+"px"}
else
{cross_marquee.style.top=parseInt(marqueeheight)+8+"px"}
}}'