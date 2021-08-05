module SocialLinks.Moon where

import Prelude hiding (String)
import SocialLink 
import Characters.Nozomi

moon :: SocialLink
moon = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                         (Rank2 (Say [Only (String "Sure, okay")]))
                         (Rank3 (Say [Only (String "You are the Gourmet King")]))
                         (Rank4 (Say [Only (String "Oh, are you sick?")]))
                         (Rank5 (Say [Only (String "Yeah, that's right")]))
                         (Rank6 (Say [Only (String "Are you feeling sick?")]))
                         (Rank7 (Say [Only (String "Wiped off the face of ??"),
                                      Anything]))
                         (Rank8 (Say [Only (String "Oh brother")]))
                         (Rank9 (Say [Anything,
                                      Anything]))
                         (Rank10 (Event (Date Nothing)))) (String "Moon") $ ReferCharacters [nozomi]
