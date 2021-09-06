module SocialLinks.Sun (sun) where 

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
                   Host(..))
import Characters.Akinari (akinari)
import Data.Function (($))

sun :: SocialLink
sun = SocialLink (Ranks (Rank1 result)
                        (Rank2 result)
                        (Rank3 result)
                        (Rank4 result)
                        (Rank5 result)
                        (Rank6 result)
                        (Rank7 result)
                        (Rank8 result)
                        (Rank9 result)
                        (Rank10 result)) "Sun" $ ReferCharacters [akinari]
        where
          result = Confront akinari
