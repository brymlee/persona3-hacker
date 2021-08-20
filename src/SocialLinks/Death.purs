module SocialLinks.Death (death) where

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
                   ($))
                   
import Characters.Ryoji (ryoji)
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))

death :: SocialLink
death = SocialLink (Ranks (Rank1 (Event (Date (Just (Tuple 6 12)))))
                          (Rank2 (Event (Date Nothing)))
                          (Rank3 (Event (Date (Just (Tuple 7 12)))))
                          (Rank4 (Event (Date Nothing)))
                          (Rank5 (Event (Date (Just (Tuple 8 7)))))
                          (Rank6 (Event (Date Nothing)))
                          (Rank7 (Event (Date (Just (Tuple 10 6)))))
                          (Rank8 (Event (Date Nothing)))
                          (Rank9 (Event (Date Nothing)))
                          (Rank10 (Event (Date (Just (Tuple 11 4)))))) "Death" $ ReferCharacters [ryoji]
