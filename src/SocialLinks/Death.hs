module SocialLinks.Death where

import Prelude hiding (String)
import SocialLink 
import Characters.Ryoji

death :: SocialLink
death = SocialLink (Ranks (Rank1 (Event (Date (Just (6, 12)))))
                          (Rank2 (Event (Date Nothing)))
                          (Rank3 (Event (Date (Just (7, 12)))))
                          (Rank4 (Event (Date Nothing)))
                          (Rank5 (Event (Date (Just (8, 7)))))
                          (Rank6 (Event (Date Nothing)))
                          (Rank7 (Event (Date (Just (10, 6)))))
                          (Rank8 (Event (Date Nothing)))
                          (Rank9 (Event (Date Nothing)))
                          (Rank10 (Event (Date (Just (11, 4)))))) (String "Death") $ Right [ryoji]
