module SocialLinks.Hermit (hermit) where

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
import Characters.Maya (maya)
import Data.Maybe (Maybe(..))

hermit :: SocialLink
hermit = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                           (Rank2 (Say [Only "Of course",
                                        Only "The outdoors are overrated"]))
                           (Rank3 (Say [Only "Oh really?",
                                        Only "So you don't like your job"]))
                           (Rank4 (Say [Only "Why don't we get married?"]))
                           (Rank5 (Say [Only "Don't you mean S.O.B",
                                        ChooseOne ["Are you a teacher?",
                                                   "You're a drunken boxing sensei"]]))
                           (Rank6 (Say [Only "Which bastard?"]))
                           (Rank7 (Say [Only "Guys only go for younger chicks",
                                        Anything]))
                           (Rank8 (Say [Only "Hurry up and tell me already",
                                        Only "What's he like"]))
                           (Rank9 (Say [Only "No way!",
                                        Anything,
                                        Only "What're you planning?"]))
                           (Rank10 (Event (Date Nothing)))) "Hermit" $ ReferCharacters [maya]
