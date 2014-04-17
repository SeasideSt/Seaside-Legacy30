as yet unclassified
testHeaders
  | cr now vers1 vers2 plainMessage |
  cr := String with: Character cr.	"Use cr so that strings compare correctly in GemStone"
  now := GRPrinter rfc822 print: DateAndTime now.
  message replyTo: self philippeMarschall.
  message headerAt: 'Date' put: now.	" We have to take into account, that the header order is not implied."
  vers1 := 'From: "Philippe Marschall" <philippe.marschall@gmail.com>' , cr
    ,
      'To: "Seaside Developers Mailinglist" <seaside-dev@lists.squeakfoundation.org>'
    , cr , 'Subject: new email package' , cr
    , 'Reply-To: "Philippe Marschall" <philippe.marschall@gmail.com>' , cr
    , 'Date: ' , now , cr , 'Content-Type: multipart/alternative;boundary='
    , message boundary , cr , cr , cr , '--' , message boundary , cr
    , 'Content-Type: text/plain' , cr , cr , 'Hello' , cr , cr , '--'
    , message boundary , '--' , cr.
  vers2 := 'From: "Philippe Marschall" <philippe.marschall@gmail.com>' , cr
    ,
      'To: "Seaside Developers Mailinglist" <seaside-dev@lists.squeakfoundation.org>'
    , cr , 'Subject: new email package' , cr
    , 'Reply-To: "Philippe Marschall" <philippe.marschall@gmail.com>' , cr
    , 'Content-Type: multipart/alternative;boundary=' , message boundary , cr
    , 'Date: ' , now , cr , cr , cr , '--' , message boundary , cr
    , 'Content-Type: text/plain' , cr , cr , 'Hello' , cr , cr , '--'
    , message boundary , '--' , cr.
  plainMessage := message plainMessage.
  self assert: (vers1 = plainMessage or: [ vers2 = plainMessage ])