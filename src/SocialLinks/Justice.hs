module SocialLinks.Justice where

import Prelude hiding (String)
import SocialLink 
import Characters.Chihiro

justice :: SocialLink
justice = SocialLink (Ranks (Rank1 (Event (Automatic Nothing)))
                            (Rank2 (Say [Only (String "Don't worry about it"),
                                         ChooseOne [String "I read the classics",
                                                    String "I read manga"],
                                         Only (String "Not really")]))
                            (Rank3 (Say [Only (String "How rude"),
                                         Only (String "I agree")]))
                            (Rank4 (Say [Anything,
                                         Only (String "Speak to her calmly")]))
                            (Rank5 (Say [Only (String "So, how as it?"),
                                         Only (String "It's just a coincidence"),
                                         Only (String "Don't be so hard on yourself"),
                                         Only (String "Hold her hand")]))
                            (Rank6 (Say [Only (String "Is it good"),
                                         Only (String "What do you mean")]))
                            (Rank7 (Say [Only (String "You're not to blame"),
                                         Only (String "We have to do something")]))
                            (Rank8 (Say [Anything,
                                         Only (String "Talk to teacher")]))
                            (Rank9 (Say [Only (String "Don't worry, she'll help us"),
                                         Only (String "Wait to see what happens"),
                                         Anything,
                                         Only (String "What's wrong")]))
                            (Rank10 (Event (Automatic Nothing)))) (String "Justice") $ Right [chihiro]
