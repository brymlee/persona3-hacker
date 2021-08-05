module SocialLinks.Devil where

import Prelude hiding (String)
import SocialLink 
import Characters.Tanaka

devil :: SocialLink 
devil = SocialLink (Ranks (Rank1 result)
                          (Rank2 result)
                          (Rank3 result)
                          (Rank4 result)
                          (Rank5 result)
                          (Rank6 result)
                          (Rank7 result)
                          (Rank8 result)
                          (Rank9 result)
                          (Rank10 result)) (String "Devil") $ ReferCharacters [tanaka]
          where
            result = Confront tanaka
