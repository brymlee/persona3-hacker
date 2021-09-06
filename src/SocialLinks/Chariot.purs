module SocialLinks.Chariot (chariot, rank3) where

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
import Characters.Kazushi (kazushi)
import Data.Maybe (Maybe(..))
import Data.Function (($))

rank3 :: Rank3
rank3 = Rank3 (Say [Only "Are you sure you're okay?",
                    Only "Will it heal?"])

chariot :: SocialLink
chariot = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                            (Rank2 (Say [Only "Toughen up",
                                         Anything,
                                         Anything]))
                            rank3
                            (Rank4 (Say [Anything,
                                         Only "That sucks"]))
                            (Rank5 (Say [Only "The hospital again?",
                                         Only "Let him use your shoulder"]))
                            (Rank6 (Say [Only "Suck it up",
                                         Only "Is it that important?",
                                         Only "What will happen to your knee?"]))
                            (Rank7 (Say [Only "How's your knee?",
                                         Only "You need to toughen up"]))
                            (Rank8 LookAway)
                            (Rank9 (Say [Only "I'm fine"]))
                            (Rank10 (Event (Date Nothing)))) "Chariot" $ ReferCharacters [kazushi]
