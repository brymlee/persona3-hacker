module SocialLinks.Fool (fool) where

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
                   RankReference(..))
import Sees (sees)
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))
import Data.Function (($))

fool :: SocialLink
fool = SocialLink (Ranks (Rank1 (Event (Date (Just (Tuple 4 18)))))
                         (Rank2 (Event (Date (Just (Tuple 4 20)))))
                         (Rank3 (Event (Date (Just (Tuple 5 9)))))
                         (Rank4 (Event (Date (Just (Tuple 7 7)))))
                         (Rank5 (Event (Date (Just (Tuple 7 22)))))
                         (Rank6 (Event (Date (Just (Tuple 11 2)))))
                         (Rank7 (Event (Date (Just (Tuple 11 4)))))
                         (Rank8 (Skip (ReferRank9 rank9)))
                         rank9
                         (Rank10 (Choose "Spare Ryoji on December 31st"))) "Fool" $ ReferGroup sees
                           where 
                             rank9 = Rank9 (Event (Date (Just (Tuple 11 28))))
