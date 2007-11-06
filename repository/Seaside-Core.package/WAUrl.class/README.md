I represent all portions of an URL as described by the RFC 1738. I include scheme, username, password, hostname, port, path, parameters, and fragment.

Portions of this code are based on code of Kazuki Yasumatsu and Paolo Bonzini.

Instance Variables
	scheme:			<String> or nil
	username:		<String> or nil
	password:		<String> or nil
	hostname:		<String> or nil
	port:			<Integer> or nil
	path:			<OrderedCollection> or nil
	parameters:		<Dictionary>
	fragment:		<String> or nil