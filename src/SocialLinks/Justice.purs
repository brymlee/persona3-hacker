module SocialLinks.Justice (justice) where

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
import Data.Maybe (Maybe(..))
import Characters.Chihiro

justice :: SocialLink
justice = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                            (Rank2 (Say [Only "Don't worry about it",
                                         ChooseOne ["I read the classics",
                                                    "I read manga"],
                                         Only "Not really"]))
                            (Rank3 (Say [Only "How rude",
                                         Only "I agree"]))
                            (Rank4 (Say [Anything,
                                         Only "Speak to her calmly"]))
                            (Rank5 (Say [Only "So, how as it?",
                                         Only "It's just a coincidence",
                                         Only "Don't be so hard on yourself",
                                         Only "Hold her hand"]))
                            (Rank6 (Say [Only "Is it good",
                                         Only "What do you mean"]))
                            (Rank7 (Say [Only "You're not to blame",
                                         Only "We have to do something"]))
                            (Rank8 (Say [Anything,
                                         Only "Talk to teacher"]))
                            (Rank9 (Say [Only "Don't worry, she'll help us",
                                         Only "Wait to see what happens",
                                         Anything,
                                         Only "What's wrong"]))
                            (Rank10 (Event (Date Nothing)))) "Justice" $ ReferCharacters [chihiro]
