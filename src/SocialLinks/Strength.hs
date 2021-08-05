module SocialLinks.Strength where

import Prelude hiding (String)
import SocialLink 
import Characters.Yuko
import qualified SocialLinks.Chariot as Chariot

chariotSocialLink :: SocialLink
chariotSocialLink = Chariot.chariot

strength :: SocialLink
strength = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                             (Rank2 (Event (SocialLinkReference chariotSocialLink (ReferRank3 Chariot.rank3))))
                             (Rank3 (Say [Only (String "Not really"),
                                          Anything,
                                          Only (String "Let's go")]))
                             (Rank4 (Say [Anything,
                                          Anything,
                                          Only (String "No worries"),
                                          Only (String "I'm honored")]))
                             (Rank5 (Say [Anything,
                                          Only (String "Do you know him?"),
                                          Only (String "It's up to you")]))
                             (Rank6 (Say [Only (String "Let's hope for the best")]))
                             (Rank7 (Say [Only (String "Are you relieved?"),
                                          Only (String "Sure")]))
                             (Rank8 (Say [Anything,
                                          ChooseOne [String "A boy",
                                                     String "A girl"]]))
                             (Rank9 (Say [Only (String "Forgot about what?"),
                                          Only (String "An instructor")]))
                             (Rank10 (Event (Date Nothing)))) (String "Strength") $ Right [yuko]
