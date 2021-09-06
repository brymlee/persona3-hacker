module SocialLinks.Lovers (lovers) where

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
import Characters.Yukari (yukari)
import Data.Function (($))

lovers :: SocialLink
lovers = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                           (Rank2 (Say [Only "Pink's cute",
                                        Only "That's messed up"]))
                           (Rank3 (Say [Anything]))
                           (Rank4 (Say [Only "Are you all right?"]))
                           (Rank5 (Say [Anything,
                                        Anything,
                                        Anything,
                                        Only "Try to cheer her up"]))
                           (Rank6 (Say [Anything]))
                           (Rank7 (Say [Only "Sounds good"]))
                           (Rank8 (Say [Only "All right",
                                        Anything]))
                           (Rank9 (Say [Only ".........."]))
                           (Rank10 (Event (Date Nothing)))) "Lovers" $ ReferCharacters [yukari]
