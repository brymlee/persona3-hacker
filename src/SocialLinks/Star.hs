module SocialLinks.Star where

import Prelude hiding (String)
import SocialLink 
import Characters.Mamoru

star :: SocialLink
star = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                         (Rank2 (Say [Only (String "yeah, no problem")]))
                         (Rank3 (Say [Anything,
                                      Anything]))
                         (Rank4 (Say [Anything,
                                      Only (String "Sounds like a good plan"),
                                      Only (String "Yeah, I bet she would be")]))
                         (Rank5 (Say [Only (String "Are you ok?"),
                                      Only (String "We should come here again")]))
                         (Rank6 (Say [Anything,
                                      Anything,
                                      Anything,
                                      Only (String "Hey, no problem")]))
                         (Rank7 (Say [Only (String "I don't mind"),
                                      Anything,
                                      Anything,
                                      Only (String "Don't give up!")]))
                         (Rank8 (Say [Only (String "You should get some more"),
                                      Anything]))
                         (Rank9 (Say [Only (String "And you won?"),
                                      Only (String "Do a victory celebration"),
                                      Anything,
                                      Only (String "Thank him for his generosity")]))
                         (Rank10 (Event (Date Nothing)))) (String "Star") $ Right [mamoru]
