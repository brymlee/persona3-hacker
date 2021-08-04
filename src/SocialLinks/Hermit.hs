module SocialLinks.Hermit where

import Prelude hiding (String)
import SocialLink 
import Characters.Maya

hermit :: SocialLink
hermit = SocialLink (Ranks (Rank1 (Event (Automatic Nothing)))
                           (Rank2 (Say [Only (String "Of course"),
                                        Only (String "The outdoors are overrated")]))
                           (Rank3 (Say [Only (String "Oh really?"),
                                        Only (String "So you don't like your job")]))
                           (Rank4 (Say [Only (String "Why don't we get married?")]))
                           (Rank5 (Say [Only (String "Don't you mean S.O.B"),
                                        ChooseOne [String "Are you a teacher?",
                                                   String "You're a drunken boxing sensei"]]))
                           (Rank6 (Say [Only (String "Which bastard?")]))
                           (Rank7 (Say [Only (String "Guys only go for younger chicks"),
                                        Anything]))
                           (Rank8 (Say [Only (String "Hurry up and tell me already"),
                                        Only (String "What's he like")]))
                           (Rank9 (Say [Only (String "No way!"),
                                        Anything,
                                        Only (String "What're you planning?")]))
                           (Rank10 (Event (Automatic Nothing)))) (String "Hermit") $ Right [maya]
