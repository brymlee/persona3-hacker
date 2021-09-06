module SocialLinks.Strength (strength) where

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
                   Message(..),
                   RankReference(..))
import Data.Maybe (Maybe(..))
import Characters.Yuko (yuko)
import SocialLinks.Chariot as Chariot
import Data.Function (($))

chariotSocialLink :: SocialLink
chariotSocialLink = Chariot.chariot

strength :: SocialLink
strength = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                             (Rank2 (Event (SocialLinkReference chariotSocialLink (ReferRank3 Chariot.rank3))))
                             (Rank3 (Say [Only "Not really",
                                          Anything,
                                          Only "Let's go"]))
                             (Rank4 (Say [Anything,
                                          Anything,
                                          Only "No worries",
                                          Only "I'm honored"]))
                             (Rank5 (Say [Anything,
                                          Only "Do you know him?",
                                          Only "It's up to you"]))
                             (Rank6 (Say [Only "Let's hope for the best"]))
                             (Rank7 (Say [Only "Are you relieved?",
                                          Only "Sure"]))
                             (Rank8 (Say [Anything,
                                          ChooseOne ["A boy",
                                                     "A girl"]]))
                             (Rank9 (Say [Only "Forgot about what?",
                                          Only "An instructor"]))
                             (Rank10 (Event (Date Nothing)))) "Strength" $ ReferCharacters [yuko]
