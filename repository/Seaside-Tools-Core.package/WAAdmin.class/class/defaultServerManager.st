server adaptors
defaultServerManager
	"Return the default server manager. This is an indirection to avoid hardcoding the
	fact that WAServerManager is currently a singleton in all the Tools."
	
	^ WAServerManager instance