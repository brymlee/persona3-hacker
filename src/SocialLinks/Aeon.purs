module SocialLinks.Aeon (aeon) where

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
import Characters.Aigis (aigis)
import Data.Maybe (Maybe(..))
import Data.Function (($))

aeon :: SocialLink
aeon = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                         (Rank2 (Say [Only "I like it"]))
                         (Rank3 (Say [Anything,
                                      Only "That's not true"]))
                         (Rank4 (Say [Anything,
                                      Only "All right"]))
                         (Rank5 (Say [Only "You may be right"]))
                         (Rank6 (Say [ChooseOne ["No, you didn't",
                                                 "He saw me as a boyfriend"]]))
                         (Rank7 (Say [Anything,
                                      Anything,
                                      Anything]))
                         (Rank8 (Say [Only "I'm doing it now",
                                      Anything]))
                         (Rank9 (Say [Only "You're right"]))
                         (Rank10 (Event (Date Nothing)))) "Aeon" $ ReferCharacters [aigis]
