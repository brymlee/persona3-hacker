module SocialLinks.Emperor where

import Prelude hiding (String)
import SocialLink 
import Characters.Hidetoshi 

emperor :: SocialLink
emperor = SocialLink (Ranks (Rank1 (Automatic Nothing))
                            (Rank2 (Say [Only (String "it's a waste of time")]))
                            (Rank3 (Say [Anything]))
                            (Rank4 (Say [Anything, Only (String "Good work")]))
                            (Rank5 (Say [Only (String "They can be pretty cruel")]))
                            (Rank6 (Say [Anything, Only (String "But I just got here")]))
                            (Rank7 (Say [Only (String "He should suffer")])) 
                            (Rank8 (Say [Anything, Only (String "It wasn't me")]))
                            (Rank9 (Say [Only (String "Dont' blame yourself")]))
                            (Rank10 (Automatic Nothing))) (String "Emperor") $ Right hidetoshi
