module SocialLinks.Devil (devil) where

import SocialLink (Rank1(..),
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
import Characters.Tanaka (tanaka)

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
                          (Rank10 result)) "Devil" $ ReferCharacters [tanaka]
          where
            result = Confront tanaka
