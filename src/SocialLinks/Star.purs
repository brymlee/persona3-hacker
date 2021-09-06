module SocialLinks.Star (star) where

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
import Data.Maybe (Maybe(..))
import Characters.Mamoru (mamoru)
import Data.Function (($))

star :: SocialLink
star = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                         (Rank2 (Say [Only "yeah, no problem"]))
                         (Rank3 (Say [Anything,
                                      Anything]))
                         (Rank4 (Say [Anything,
                                      Only "Sounds like a good plan",
                                      Only "Yeah, I bet she would be"]))
                         (Rank5 (Say [Only "Are you ok?",
                                      Only "We should come here again"]))
                         (Rank6 (Say [Anything,
                                      Anything,
                                      Anything,
                                      Only "Hey, no problem"]))
                         (Rank7 (Say [Only "I don't mind",
                                      Anything,
                                      Anything,
                                      Only "Don't give up!"]))
                         (Rank8 (Say [Only "You should get some more",
                                      Anything]))
                         (Rank9 (Say [Only "And you won?",
                                      Only "Do a victory celebration",
                                      Anything,
                                      Only "Thank him for his generosity"]))
                         (Rank10 (Event (Date Nothing)))) "Star" $ ReferCharacters [mamoru]
