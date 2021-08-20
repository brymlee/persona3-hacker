module SocialLinks.Hierophant (hierophant) where

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
import Characters.Mitsuko (mitsuko)
import Characters.Bunkichi (bunkichi)
import Data.Maybe (Maybe(..))

hierophant :: SocialLink
hierophant = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                               (Rank2 (Say [Only "Tell him",
                                            Only "Thanks",
                                            Anything,
                                            Anything,
                                            Anything]))
                               (Rank3 (Say [Only "Looking for something?",
                                            Only "I'll help you look", 
                                            Anything, 
                                            Anything, 
                                            Anything]))
                               (Rank4 (Say [Anything,
                                            Anything,
                                            Only "Now, you have me worried"]))
                               (Rank5 (Say [Only "I'll root out the truth!",
                                            Anything]))
                               (Rank6 (Say [Only "Please stop quarrelling", 
                                            Anything]))
                               (Rank7 (Say [Only "Ask why she's crying",
                                            Only "That's great",
                                            Anything]))
                               (Rank8 (Say [Anything, Anything, Anything]))
                               (Rank9 (Say [Anything, Anything]))
                               (Rank10 (Event (Date Nothing)))) "Hierophant" $ ReferCharacters [bunkichi, mitsuko]
