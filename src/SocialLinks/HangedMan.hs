module SocialLinks.HangedMan where

import Prelude hiding (String)
import SocialLink 
import Characters.Maiko

hangedMan :: SocialLink
hangedMan = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                              (Rank2 (Say [Only (String "Sure, Let's go"),
                                           Anything,
                                           Anything]))
                              (Rank3 (Say [Anything,
                                           Only (String "Don't worry, he'll be there")]))
                              (Rank4 (Say [ChooseOne [String "I'm happy for you",
                                                      String "Nobody could forget you"]]))
                              (Rank5 (Say [Only (String "That's terrible"),
                                           Only (String "That isn't true")]))
                              (Rank6 (Say [ChooseOne [String "Calm down",
                                                      String "Sounds like a plan"],
                                           Only (String "You don't need that stuff")]))
                              (Rank7 (Say [Anything,
                                           Anything]))
                              (Rank8 (Say [Only (String "Hamburgers"),
                                           Only (String "Yeah, you did good"),
                                           Only (String "Choose your dad")]))
                              (Rank9 (Say [Only (String "We're friends forever")]))
                              (Rank10 (Event (Date Nothing)))) (String "Hanged Man") $ ReferCharacters [maiko]
