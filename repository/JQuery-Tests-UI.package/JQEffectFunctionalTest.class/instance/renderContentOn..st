rendering
renderContentOn: html
	html div
		id: 'effect';
		onClick: (html jQuery this effect transfer; toElement: '#effect_target'; speed: 1000);
		style: 'position: relative; width: 100px; height: 100px; border: 1px solid black; background-color: #77f;text-align:center';
		with: [html break; break; big: 'Click me'].
	html break.
	html div
		class: 'red';
		id: 'effect_target';
		style: 'position: relative; width: 50px; height: 50px; border: 1px solid black; background-color: #f77'.
		
	html break; big: 'Toggle: '.
	html button
		onClick: ((html jQuery: #effect) effect toggle; blind;speed:2000);
		with: 'Blind'.
	html button
		onClick: ((html jQuery: #effect) effect toggle; clip; direction: 'vertical');
		with: 'Clip'.
	html button
		onClick: ((html jQuery: #effect) effect toggle; drop; direction: 'left'; speed: 1000);
		with: 'Drop'.
	html button
		onClick: ((html jQuery: #effect) effect toggle; explode; pieces: 16; speed: 1000);
		with: 'Explode'.
	html button
		onClick: ((html jQuery: #effect) effect toggle; fold; size: 30);
		with: 'Fold'.
	html button
		onClick: ((html jQuery: #effect) effect toggle; puff; percent: 200);
		with: 'Puff'.
	html button
		onClick: ((html jQuery: #effect) effect toggle; pulsate);
		with: 'Pulsate'.
	html button
		onClick: ((html jQuery: #effect) effect toggle; scale);
		with: 'Scale'.
	html button
		onClick: ((html jQuery: #effect) effect toggle; slide; direction: 'right');
		with: 'Slide'.
	html horizontalRule.	
	html big: 'Effect: '.
	html button
		onClick: ((html jQuery: #effect) effect bounce; easing: 'linear'; times: 2);
		with: 'Bounce'.
	html button
		onClick: ((html jQuery: #effect) effect shake; distance: 10; times: 2);
		with: 'Shake'.
	html button
		onClick: ((html jQuery: #effect) effect highlight; speed: 2000);
		with: 'Highlight'.
	html button
		onClick: ((html jQuery: #effect) effect effect; size; toWidth: 50 height: 40);
		with: 'Shrink'.
	html button
		onClick: ((html jQuery: #effect) effect effect; size; toWidth: 100 height: 100);
		with: 'Grow'.
