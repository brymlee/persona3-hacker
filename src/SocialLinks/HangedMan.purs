module SocialLinks.HangedMan (hangedMan) where

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
import Characters.Maiko (maiko)
import Data.Maybe (Maybe(..))
import Data.Function (($))

hangedMan :: SocialLink
hangedMan = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                              (Rank2 (Say [Only "Sure, Let's go",
                                           Anything,
                                           Anything]))
                              (Rank3 (Say [Anything,
                                           Only "Don't worry, he'll be there"]))
                              (Rank4 (Say [ChooseOne ["I'm happy for you",
                                                      "Nobody could forget you"]]))
                              (Rank5 (Say [Only "That's terrible",
                                           Only "That isn't true"]))
                              (Rank6 (Say [ChooseOne ["Calm down",
                                                      "Sounds like a plan"],
                                           Only "You don't need that stuff"]))
                              (Rank7 (Say [Anything,
                                           Anything]))
                              (Rank8 (Say [Only "Hamburgers",
                                           Only "Yeah, you did good",
                                           Only "Choose your dad"]))
                              (Rank9 (Say [Only "We're friends forever"]))
                              (Rank10 (Event (Date Nothing)))) "Hanged Man" $ ReferCharacters [maiko]
