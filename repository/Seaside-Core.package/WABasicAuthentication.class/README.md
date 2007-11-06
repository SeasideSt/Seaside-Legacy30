WABasicAuthentication password protects its component using the standard Http basic authentication, which passes usernames & passwords in clear text. You must set the authenticator, which validates usernames and passwords.

Seaside has a number of ways to authenticate a user: WAComponent>>registerAsAuthenticatedApplication:, WAAuthMain, WAAuthConfiguration. One can also use a task or a session to authenticate. These methods can be used to authenicate a session or application rather than a single component.

Instance Variables:
	authenticator	<Authenticator>	Any object that implements the method verifyPassword:forUser:
	realm	<String>	An http realm is a string used to identify a set of pages that are convered by the same login

