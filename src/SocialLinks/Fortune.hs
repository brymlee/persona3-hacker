module SocialLinks.Fortune where

import Prelude hiding (String)
import SocialLink 
import Characters.Keisuke

fortune :: SocialLink
fortune = SocialLink (Ranks (Rank1 (Event (Automatic Nothing)))
                            (Rank2 (Say [Anything,
                                         Anything]))
                            (Rank3 (Say [Only (String "Great job!"),
                                         Anything]))
                            (Rank4 (Say [Anything,
                                         Only (String "Complaining won't help")]))
                            (Rank5 (Say [Only (String "You should tell your dad")]))
                            (Rank6 (Say [Anything,
                                         Only (String "Do whatever you want")]))
                            (Rank7 (Say [Only (String "Are you gonna be a doctor?")]))
                            (Rank8 (Say [Only (String "Yeah I'm fine"),
                                         Anything,
                                         Anything]))
                            (Rank9 (Say [Only (String "Try to stop him"),
                                         Anything,
                                         Anything,
                                         Anything,
                                         Anything]))
                            (Rank10 (Event (Automatic Nothing)))) (String "Fortune") $ Right [keisuke]
