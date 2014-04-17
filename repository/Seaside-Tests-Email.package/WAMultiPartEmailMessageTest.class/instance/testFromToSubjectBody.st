as yet unclassified
testFromToSubjectBody
  | cr |
  cr := String with: Character cr.	"Use cr so that strings compare correctly in GemStone"
  message headers removeKey: 'Date'.
  self
    assert:
      'From: "Philippe Marschall" <philippe.marschall@gmail.com>' , cr
        ,
          'To: "Seaside Developers Mailinglist" <seaside-dev@lists.squeakfoundation.org>'
        , cr , 'Subject: new email package' , cr
        , 'Content-Type: multipart/alternative;boundary=' , message boundary
        , cr , cr , cr , '--' , message boundary , cr
        , 'Content-Type: text/plain' , cr , cr , 'Hello' , cr , cr , '--'
        , message boundary , '--' , cr
    equals: message plainMessage