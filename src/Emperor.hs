module Emperor where

import Prelude hiding (String)
import SocialLink 
import Hidetoshi 

emperor :: SocialLink
emperor = SocialLink (Ranks (Rank1 (Automatic Nothing))
                            (Rank2 (Say (String "It's a waste of time")))
                            (Rank3 (Say (String "Anything")))
                            (Rank4 (Say (String "Anything -> Good work")))
                            (Rank5 (Say (String "They can be pretty cruel")))
                            (Rank6 (Say (String "Anything -> But I just got here")))
                            (Rank7 (Say (String "He should suffer")))
                            (Rank8 (Say (String "Anything -> It wasn't me")))
                            (Rank9 (Say (String "Don't blame yourself")))
                            (Rank10 (Automatic Nothing))) (String "Emperor") $ Right hidetoshi
