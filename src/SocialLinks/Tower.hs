module SocialLinks.Tower where

import Prelude hiding (String)
import SocialLink 
import Characters.Mutatsu

tower :: SocialLink 
tower = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                          (Rank2 (Say [Only (String "None of your business"),
                                       Only (String "I'm sorry, um?")]))
                          (Rank3 (Say [Only (String "I don't have any friends")]))
                          (Rank4 (Say [Only (String "Yeah that might look cool")]))
                          (Rank5 (Say [Only (String "I have enough"),
                                       Only (String "Yes")]))
                          (Rank6 (Say [Only (String "You should go home"),
                                       Only (String "What about the others?")]))
                          (Rank7 (Say [Only (String "I don't think you should")]))
                          (Rank8 (Say [Only (String "Dad?"),
                                       ChooseOne [String "I was with a friend",
                                                  String "None of your business"],
                                       Anything,
                                       Only (String "Are you running away?")]))
                          (Rank9 (Say [Anything,
                                       Anything,
                                       Anything]))
                          (Rank10 (Event (Date Nothing)))) (String "Tower") $ Right [mutatsu]
