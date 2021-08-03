module SocialLinks.Lovers where

import Prelude hiding (String)
import SocialLink 
import Characters.Yukari

lovers :: SocialLink
lovers = SocialLink (Ranks (Rank1 (Automatic Nothing))
                           (Rank2 (Say [Only (String "Pink's cute"),
                                        Only (String "That's messed up")]))
                           (Rank3 (Say [Anything]))
                           (Rank4 (Say [Only (String "Are you all right?")]))
                           (Rank5 (Say [Anything,
                                        Anything,
                                        Anything,
                                        Only (String "Try to cheer her up")]))
                           (Rank6 (Say [Anything]))
                           (Rank7 (Say [Only (String "Sounds good")]))
                           (Rank8 (Say [Only (String "All right"),
                                        Anything]))
                           (Rank9 (Say [Only (String "..........")]))
                           (Rank10 (Automatic Nothing))) (String "Lovers") $ Right [yukari]
