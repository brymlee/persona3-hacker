module SocialLinks.Aeon where

import Prelude hiding (String)
import SocialLink 
import Characters.Aigis 

aeon :: SocialLink
aeon = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                         (Rank2 (Say [Only (String "I like it")]))
                         (Rank3 (Say [Anything,
                                      Only (String "That's not true")]))
                         (Rank4 (Say [Anything,
                                      Only (String "All right")]))
                         (Rank5 (Say [Only (String "You may be right")]))
                         (Rank6 (Say [ChooseOne [String "No, you didn't",
                                                 String "He saw me as a boyfriend"]]))
                         (Rank7 (Say [Anything,
                                      Anything,
                                      Anything]))
                         (Rank8 (Say [Only (String "I'm doing it now"),
                                      Anything]))
                         (Rank9 (Say [Only (String "You're right")]))
                         (Rank10 (Event (Date Nothing)))) (String "Aeon") $ ReferCharacters [aigis]
