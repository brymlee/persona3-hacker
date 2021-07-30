module SocialLinks.Hierophant where

import Prelude hiding (String)
import SocialLink
import Characters.Bunkichi
import Characters.Mitsuko

hierophant :: SocialLink
hierophant = SocialLink (Ranks (Rank1 (Automatic Nothing))
                               (Rank2 (Say [Only (String "Tell him"),
                                            Only (String "Thanks"),
                                            Anything,
                                            Anything,
                                            Anything]))
                               (Rank3 (Say [Only (String "Looking for something?"),
                                            Only (String "I'll help you look"), 
                                            Anything, 
                                            Anything, 
                                            Anything]))
                               (Rank4 (Say [Anything,
                                            Anything,
                                            Only (String "Now, you have me worried")]))
                               (Rank5 (Say [Only (String "I'll root out the truth!"),
                                            Anything]))
                               (Rank6 (Say [Only (String "Please stop quarrelling"), 
                                            Anything]))
                               (Rank7 (Say [Only (String "Ask why she's crying"),
                                            Only (String "That's great"),
                                            Anything]))
                               (Rank8 (Say [Anything, Anything, Anything]))
                               (Rank9 (Say [Anything, Anything]))
                               (Rank10 (Automatic Nothing))) (String "Hierophant") $ Right [bunkichi, mitsuko]
