module SocialLinks.Fortune (fortune) where

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
import Characters.Keisuke (keisuke)
import Data.Maybe (Maybe(..))
import Data.Function (($))

fortune :: SocialLink
fortune = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                            (Rank2 (Say [Anything,
                                         Anything]))
                            (Rank3 (Say [Only "Great job!",
                                         Anything]))
                            (Rank4 (Say [Anything,
                                         Only "Complaining won't help"]))
                            (Rank5 (Say [Only "You should tell your dad"]))
                            (Rank6 (Say [Anything,
                                         Only "Do whatever you want"]))
                            (Rank7 (Say [Only "Are you gonna be a doctor?"]))
                            (Rank8 (Say [Only "Yeah I'm fine",
                                         Anything,
                                         Anything]))
                            (Rank9 (Say [Only "Try to stop him",
                                         Anything,
                                         Anything,
                                         Anything,
                                         Anything]))
                            (Rank10 (Event (Date Nothing)))) "Fortune" $ ReferCharacters [keisuke]
