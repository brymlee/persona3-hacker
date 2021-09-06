module SocialLinks.Emperor (emperor) where

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
                   Message(..))
import Characters.Hidetoshi (hidetoshi)
import Data.Maybe (Maybe(..))
import Data.Function (($))

emperor :: SocialLink
emperor = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                            (Rank2 (Say [Only "it's a waste of time"]))
                            (Rank3 (Say [Anything]))
                            (Rank4 (Say [Anything, Only "Good work"]))
                            (Rank5 (Say [Only "They can be pretty cruel"]))
                            (Rank6 (Say [Anything, Only "But I just got here"]))
                            (Rank7 (Say [Only "He should suffer"])) 
                            (Rank8 (Say [Anything, Only "It wasn't me"]))
                            (Rank9 (Say [Only "Dont' blame yourself"]))
                            (Rank10 (Event (Date Nothing)))) "Emperor" $ ReferCharacters [hidetoshi]
