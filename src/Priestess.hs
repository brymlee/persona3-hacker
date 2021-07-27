module Priestess where

import Prelude hiding (String)
import Fuuka 
import SocialLink

priestess :: SocialLink
priestess = SocialLink (Ranks (Rank1 (Automatic Nothing))
                              (Rank2 (Say (String "Sure")))
                              (Rank3 (Say (String "I believe in you -> Anything")))
                              (Rank4 (Say (String "anything -> Oh, I don't think so")))
                              (Rank5 (Say (String "You did a great job -> Anything")))
                              (Rank6 (Say (String "Okay")))
                              (Rank7 (Say (String "Anything -> Anything")))
                              (Rank8 (Say (String "Anthing -> I want to be with you too")))
                              (Rank9 (Say (String "Anthing -> Anything")))
                              (Rank10 (Automatic Nothing))) (String "Priestess") $ Right fuuka
