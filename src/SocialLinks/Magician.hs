module SocialLinks.Magician where

import Prelude hiding (String)
import Characters.Kenji 
import Characters.Emiri
import SocialLink

magician :: SocialLink
magician = SocialLink (Ranks (Rank1 (Automatic (Just (Date 4 22))))
                             (Rank2 (Say [ChooseOne [(String "No"), 
                                                     (String "That's a secret")], 
                                          ChooseOne [(String "I like older women"),
                                                     (String "I like them all")]]))
                             (Rank3 (Say [Only (String "What, life?"), Only (String "Go for it")]))
                             (Rank4 (Say [Anything, Only (String "Good luck")]))
                             (Rank5 (Say [Only (String "I agree")]))
                             (Rank6 (Say [Anything, Only (String "I have 30-year goals")]))
                             (Rank7 (Say [Only (String "What's wrong"),
                                          Only (String "Bride-To-Be Magazine"),
                                          Only (String "That's great. Congrats!")]))
                             (Rank8 (Say [Only (String "Are you in trouble?"),
                                          ChooseOne [(String "You should go with her"),
                                                     (String "You should talk to her")]]))
                             (Rank9 (Confront emiri))
                             (Rank10 (Automatic Nothing))) (String "Magician") $ Right [kenji]
