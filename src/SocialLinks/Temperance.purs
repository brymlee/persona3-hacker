module SocialLinks.Temperance (temperance) where

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
import Characters.Andre (andre)
import Data.Function (($))

temperance :: SocialLink
temperance = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                               (Rank2 (Say [Anything,
                                            Only "Yeah, Japan is great"]))
                               (Rank3 (Say [Anything,
                                            Only "Something traditional (Temperance Persona Required)"]))
                               (Rank4 (Say [Only "Are you alright?",
                                            Anything]))
                               (Rank5 (Say [Only "Sure",
                                            Only "Then stay"]))
                               (Rank6 (Say [Only "Take a break",
                                            Only "Let's go",
                                            Only "Support him"]))
                               (Rank7 (Say [Only "That's a good idea"]))
                               (Rank8 (Say [Only "He'll agree for sure"]))
                               (Rank9 (Say [Only "Ask about his country"]))
                               (Rank10 (Event (Date Nothing)))) "Temperance" $ ReferCharacters [andre]
