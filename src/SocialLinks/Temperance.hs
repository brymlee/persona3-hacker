module SocialLinks.Temperance where

import Prelude hiding (String)
import SocialLink 
import Characters.Andre

temperance :: SocialLink
temperance = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                               (Rank2 (Say [Anything,
                                            Only (String "Yeah, Japan is great")]))
                               (Rank3 (Say [Anything,
                                            Only (String "Something traditional (Temperance Persona Required)")]))
                               (Rank4 (Say [Only (String "Are you alright?"),
                                            Anything]))
                               (Rank5 (Say [Only (String "Sure"),
                                            Only (String "Then stay")]))
                               (Rank6 (Say [Only (String "Take a break"),
                                            Only (String "Let's go"),
                                            Only (String "Support him")]))
                               (Rank7 (Say [Only (String "That's a good idea")]))
                               (Rank8 (Say [Only (String "He'll agree for sure")]))
                               (Rank9 (Say [Only (String "Ask about his country")]))
                               (Rank10 (Event (Date Nothing)))) (String "Temperance") $ Right [andre]
