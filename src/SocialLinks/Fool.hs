module SocialLinks.Fool where

import Prelude hiding (String)
import SocialLink 
import Sees 

fool :: SocialLink
fool = SocialLink (Ranks (Rank1 (Event (Date (Just (4, 18)))))
                         (Rank2 (Event (Date (Just (4, 20)))))
                         (Rank3 (Event (Date (Just (5, 9)))))
                         (Rank4 (Event (Date (Just (7, 7)))))
                         (Rank5 (Event (Date (Just (7, 22)))))
                         (Rank6 (Event (Date (Just (11, 2)))))
                         (Rank7 (Event (Date (Just (11, 4)))))
                         (Rank8 (Skip (ReferRank9 rank9)))
                         rank9
                         (Rank10 (Choose (String "Spare Ryoji on December 31st")))) (String "Fool") $ ReferGroup sees
                           where 
                             rank9 = Rank9 (Event (Date (Just (11, 28))))
