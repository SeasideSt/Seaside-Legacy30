WATrail implements breadcrumbs for pages generated using a sequence of WAComponent>>call: methods. Each component in the call sequence that is to appear in the breadcrumb must implement the method "trailName", which returns the text displayed in the breadcrumb. 

Instantiate (WATrail on: rootComponent) an WATrail object on the first component (root) of the breadcrumb. When the root component, or subsequent component, transfers control via "self call:" the WATrail object is automatically updated and will display the correct call sequence in the breadcrumb. When a user clicks on a link in the breadcrumb the call sequence is automatically updated.

Uses CSS and lists to display the ">>" in breadcrumbs. As a result the breadcrumb starts with ">>" rather than the first element

Instance Variables:
	root	<WAComponent>	first component in the breadcrumb and in the call sequence.

