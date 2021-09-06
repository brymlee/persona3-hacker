module SocialLinks.Moon (moon) where

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
import Characters.Nozomi (nozomi)
import Data.Function (($))

moon :: SocialLink
moon = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                         (Rank2 (Say [Only "Sure, okay"]))
                         (Rank3 (Say [Only "You are the Gourmet King"]))
                         (Rank4 (Say [Only "Oh, are you sick?"]))
                         (Rank5 (Say [Only "Yeah, that's right"]))
                         (Rank6 (Say [Only "Are you feeling sick?"]))
                         (Rank7 (Say [Only "Wiped off the face of ??",
                                      Anything]))
                         (Rank8 (Say [Only "Oh brother"]))
                         (Rank9 (Say [Anything,
                                      Anything]))
                         (Rank10 (Event (Date Nothing)))) "Moon" $ ReferCharacters [nozomi]
