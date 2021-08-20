module SocialLinks.Priestess (priestess) where

import SocialLink (Event'(..), 
                   Rank1(..),
                   Rank2(..),
                   Rank3(..),
                   Rank4(..),
                   Rank5(..),
                   Rank6(..),
                   Rank7(..),
                   Rank8(..),
                   Rank9(..),
                   Rank10(..),
                   Trigger(..),
                   SocialLink(..),
                   Ranks(..),
                   Host(..), 
                   ($), 
                   Message(..))
import Data.Maybe (Maybe(..))
import Characters.Fuuka (fuuka)

priestess :: SocialLink
priestess = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                              (Rank2 (Say [Only "Sure"]))
                              (Rank3 (Say [Only "I believe in you", Anything]))
                              (Rank4 (Say [Anything, Only "Oh, I don't think so"]))
                              (Rank5 (Say [Only "You did a great job", Anything]))
                              (Rank6 (Say [Only "Okay"]))
                              (Rank7 (Say [Anything, Anything]))
                              (Rank8 (Say [Anything, Only "I want to be with you too"]))
                              (Rank9 (Say [Anything, Anything]))
                              (Rank10 (Event (Date Nothing)))) "Priestess" $ ReferCharacters [fuuka]
