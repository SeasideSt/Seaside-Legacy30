I provide an adapter between Seaside and the Comanche web server and by default do response/request conversion from UTF-8 to Squeak encoding (minus the leading char) and back in Squeak 3.8 and above. The same behavior can be achieved by evaluating:

WAKom default encoding: 'uft-8'

See the class comments of WAKom and WAComacheRequestConverter for more information regarding encoding.