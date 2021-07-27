module Magician where

import Prelude hiding (String)
import Kenji 
import SocialLink

magician :: SocialLink
magician = SocialLink (Ranks (Rank1 (Automatic (Just (Date 4 22))))
                             (Rank2 (Say (String "No/That's a secret -> I like older women/I like them all")))
                             (Rank3 (Say (String "What, life? -> Go for it")))
                             (Rank4 (Say (String "anything -> Good luck")))
                             (Rank5 (Say (String "I agree")))
                             (Rank6 (Say (String "anything -> I have 30-year goals")))
                             (Rank7 (Say (String "What's wrong -> Bride-To-Be Magazine -> That's great. Congrats!")))
                             (Rank8 (Say (String "Are you in trouble? -> You should go with her/You should talk to her")))
                             (Rank9 (Confront (String "Emiri")))
                             (Rank10 (Automatic Nothing))) (String "Magician") $ Right kenji
