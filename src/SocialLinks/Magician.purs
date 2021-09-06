module SocialLinks.Magician where

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
import Characters.Kenji (kenji)
import Characters.Emiri (emiri)
import Data.Tuple (Tuple(..))
import Data.Function (($))

magician :: SocialLink
magician = SocialLink (Ranks (Rank1 (Event (Date (Just (Tuple 4 22)))))
                             (Rank2 (Say [ChooseOne ["No", 
                                                     "That's a secret"], 
                                          ChooseOne ["I like older women",
                                                     "I like them all"]]))
                             (Rank3 (Say [Only "What, life?", Only "Go for it"]))
                             (Rank4 (Say [Anything, Only "Good luck"]))
                             (Rank5 (Say [Only "I agree"]))
                             (Rank6 (Say [Anything, Only "I have 30-year goals"]))
                             (Rank7 (Say [Only "What's wrong",
                                          Only "Bride-To-Be Magazine",
                                          Only "That's great. Congrats!"]))
                             (Rank8 (Say [Only "Are you in trouble?",
                                          ChooseOne ["You should go with her",
                                                     "You should talk to her"]]))
                             (Rank9 (Confront emiri))
                             (Rank10 (Event (Date Nothing)))) "Magician" $ ReferCharacters [kenji]
