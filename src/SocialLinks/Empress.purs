module SocialLinks.Empress (empress) where

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
                   ($), 
                   Message(..))
import Characters.Mitsuru (mitsuru)
import Data.Maybe (Maybe(..))

empress :: SocialLink
empress = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                            (Rank2 (Say [Anything]))
                            (Rank3 (Say [Only "Ask her to treat you",
                                         Only "Does that make you happy",
                                         Anything,
                                         Only "Agree to forgot about it"]))
                            (Rank4 (Say [Only "Did something happen?",
                                         Only "It's the result of love",
                                         Anything]))
                            (Rank5 (Say [Only "I'm glad you enjoyed it",
                                         Only "A motorcycle",
                                         Only "Let's go for a ride"]))
                            (Rank6 (Say [Only "Can I get a book for you",
                                         Only "That's news to me?",
                                         Only "You have to reconsider"]))
                            (Rank7 (Say [Only "Let's do it"]))
                            (Rank8 (Say [Anything,
                                         Anything,
                                         Only "Say something to the guy", 
                                         Anything]))
                            (Rank9 (Say [Only "That makes me happy"]))
                            (Rank10 (Event (Date Nothing)))) "Empress" $ ReferCharacters [mitsuru]
