module Empress where

import Prelude hiding (String)
import SocialLink
import Mitsuru 

empress :: SocialLink
empress = SocialLink (Ranks (Rank1 (Automatic Nothing))
                            (Rank2 (Say (String "Anything")))
                            (Rank3 (Say (String "Ask her to treat you -> Does that make you happy -> Anything -> Agree to forget about it")))
                            (Rank4 (Say (String "Did something happen? -> It's the result of love -> Anything")))
                            (Rank5 (Say (String "I'm glad you enjoyed it -> A motorcycle? -> Let's go for a ride")))
                            (Rank6 (Say (String "Can I get a book for you -> That's news to me? -> You have to reconsider")))
                            (Rank7 (Say (String "Let's do it")))
                            (Rank8 (Say (String "Anything x 2 -> Say something to the guy -> Anything")))
                            (Rank9 (Say (String "That makes me happy")))
                            (Rank10 (Automatic Nothing))) (String "Empress") $ Right mitsuru
