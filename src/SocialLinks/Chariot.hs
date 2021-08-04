module SocialLinks.Chariot where

import Prelude hiding (String)
import SocialLink 
import Characters.Kazushi

chariot :: SocialLink
chariot = SocialLink (Ranks (Rank1 (Event (Automatic Nothing)))
                            (Rank2 (Say [Only (String "Toughen up"),
                                         Anything,
                                         Anything]))
                            (Rank3 (Say [Only (String "Are you sure you're okay?"),
                                         Only (String "Will it heal?")]))
                            (Rank4 (Say [Anything,
                                         Only (String "That sucks")]))
                            (Rank5 (Say [Only (String "The hospital again?"),
                                         Only (String "Let him use your shoulder")]))
                            (Rank6 (Say [Only (String "Suck it up"),
                                         Only (String "Is it that important?"),
                                         Only (String "What will happen to your knee?")]))
                            (Rank7 (Say [Only (String "How's your knee?"),
                                         Only (String "You need to toughen up")]))
                            (Rank8 LookAway)
                            (Rank9 (Say [Only (String "I'm fine")]))
                            (Rank10 (Event (Automatic Nothing)))) (String "Chariot") $ Right [kazushi]