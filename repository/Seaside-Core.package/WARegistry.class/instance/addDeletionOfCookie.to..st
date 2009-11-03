handling-helpers
addDeletionOfCookie: aCookie to: aRequestContext
	"Request the deletion of aCookie in the response."

	aRequestContext response deleteCookie: aCookie path: self url pathString.