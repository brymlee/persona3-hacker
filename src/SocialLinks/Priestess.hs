module SocialLinks.Priestess where

import Prelude hiding (String)
import Characters.Fuuka 
import SocialLink

priestess :: SocialLink
priestess = SocialLink (Ranks (Rank1 (Automatic Nothing))
                              (Rank2 (Say [Only (String "Sure")]))
                              (Rank3 (Say [Only (String "I believe in you"), Anything]))
                              (Rank4 (Say [Anything, Only (String "Oh, I don't think so")]))
                              (Rank5 (Say [Only (String "You did a great job"), Anything]))
                              (Rank6 (Say [Only (String "Okay")]))
                              (Rank7 (Say [Anything, Anything]))
                              (Rank8 (Say [Anything, Only (String "I want to be with you too")]))
                              (Rank9 (Say [Anything, Anything]))
                              (Rank10 (Automatic Nothing))) (String "Priestess") $ Right [fuuka]
