rendering
renderContentOn: html
	html div
		id: 'effect';
		style: 'position: relative; width: 100px; height: 100px; background-color: #77f'.
		
	html big: 'Toggle: '.
"	html button
		onClick: 'console.log(',(html jQuery: #effect) printString ,')';
		with: 'Log'."
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
		onClick: ((html jQuery: #effect) effect toggle; explode; direction: 'left');
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
		onClick: ((html jQuery: #effect) effect toggle; size);
		with: 'Size'.
	html button
		onClick: ((html jQuery: #effect) effect toggle; slide; direction: 'right');
		with: 'Slide'.

	html horizontalRule.	
	html big: 'Effect: '.
	html button
		onClick: ((html jQuery: #effect) effect bounce; easing: 'linear'; times: 2);
		with: 'Bounce'.
	html button
		onClick: ((html jQuery: #effect) effect shake);
		with: 'Shake'.
	html button
		onClick: ((html jQuery: #effect) effect highlight; speed: 2000);
		with: 'Highlight'.
