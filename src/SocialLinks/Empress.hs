module SocialLinks.Empress where

import Prelude hiding (String)
import SocialLink
import Characters.Mitsuru 

empress :: SocialLink
empress = SocialLink (Ranks (Rank1 (Automatic Nothing))
                            (Rank2 (Say [Anything]))
                            (Rank3 (Say [Only (String "Ask her to treat you"),
                                         Only (String "Does that make you happy"),
                                         Anything,
                                         Only (String "Agree to forgot about it")]))
                            (Rank4 (Say [Only (String "Did something happen?"),
                                         Only (String "It's the result of love"),
                                         Anything]))
                            (Rank5 (Say [Only (String "I'm glad you enjoyed it"),
                                         Only (String "A motorcycle"),
                                         Only (String "Let's go for a ride")]))
                            (Rank6 (Say [Only (String "Can I get a book for you"),
                                         Only (String "That's news to me?"),
                                         Only (String "You have to reconsider")]))
                            (Rank7 (Say [Only (String "Let's do it")]))
                            (Rank8 (Say [Anything,
                                         Anything,
                                         Only (String "Say something to the guy"), 
                                         Anything]))
                            (Rank9 (Say [Only (String "That makes me happy")]))
                            (Rank10 (Automatic Nothing))) (String "Empress") $ Right mitsuru
