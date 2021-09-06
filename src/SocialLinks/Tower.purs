module SocialLinks.Tower (tower) where

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
import Characters.Mutatsu (mutatsu)
import Data.Function (($))

tower :: SocialLink 
tower = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                          (Rank2 (Say [Only "None of your business",
                                       Only "I'm sorry, um?"]))
                          (Rank3 (Say [Only "I don't have any friends"]))
                          (Rank4 (Say [Only "Yeah that might look cool"]))
                          (Rank5 (Say [Only "I have enough",
                                       Only "Yes"]))
                          (Rank6 (Say [Only "You should go home",
                                       Only "What about the others?"]))
                          (Rank7 (Say [Only "I don't think you should"]))
                          (Rank8 (Say [Only "Dad?",
                                       ChooseOne ["I was with a friend",
                                                  "None of your business"],
                                       Anything,
                                       Only "Are you running away?"]))
                          (Rank9 (Say [Anything,
                                       Anything,
                                       Anything]))
                          (Rank10 (Event (Date Nothing)))) "Tower" $ ReferCharacters [mutatsu]
