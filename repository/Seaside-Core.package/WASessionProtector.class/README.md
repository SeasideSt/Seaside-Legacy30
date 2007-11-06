I bind a session to an IP address.

The problem I solve is when you navigate from a Seaside "page" to a different page then this page will have enough information to hijack your old session. This can happen for example with blogs that display the referer.

I don't work for users that have the same IP. This is the case if they are NATed (universities, companies, ...). I can be circumvened if the application is not behind an Apache proxy.

An alternative to solve the same problem is to use a session cookie.

Usage:
In your root component class implement

initialize
	super initialize.
	self addDecoration: WASessionProtector new