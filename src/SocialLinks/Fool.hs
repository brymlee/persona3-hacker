module SocialLinks.Fool where

import Prelude hiding (String)
import SocialLink 
import Sees 

fool :: SocialLink
fool = SocialLink (Ranks (Rank1 (Event (Automatic (Just (Date 4 18)))))
                         (Rank2 (Event (Automatic (Just (Date 4 20)))))
                         (Rank3 (Event (Automatic (Just (Date 5 9)))))
                         (Rank4 (Event (Automatic (Just (Date 7 7)))))
                         (Rank5 (Event (Automatic (Just (Date 7 22)))))
                         (Rank6 (Event (Automatic (Just (Date 11 2)))))
                         (Rank7 (Event (Automatic (Just (Date 11 4)))))
                         (Rank8 (Skip (ReferRank9 rank9)))
                         rank9
                         (Rank10 (Choose (String "Spare Ryoji on December 31st")))) (String "Fool") $ Left sees
                           where 
                             rank9 = Rank9 (Event (Automatic (Just (Date 11 28))))
