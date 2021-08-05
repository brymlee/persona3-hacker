module SocialLinks.Judgement where

import Prelude hiding (String)
import SocialLink 
import Tartarus
import Enemies.Nyx
import Enemies.NobleSeeker
import Enemies.CarnalSnake
import Enemies.WorldBalance
import Enemies.FierceCyclops
import Enemies.JotunOfGrief

judgement :: SocialLink
judgement = SocialLink (Ranks (Rank1 (Event (Date Nothing)))
                              (Rank2 (Reach Floor215))
                              (Rank3 (Defeat nobleSeeker))
                              (Rank4 (Reach Floor224))
                              (Rank5 (Defeat carnalSnake))
                              (Rank6 (Defeat worldBalance))
                              (Rank7 (Reach Floor240))
                              (Rank8 (Defeat fierceCyclops))
                              (Rank9 (Defeat jotunOfGrief))
                              (Rank10 (Reach Floor254))) (String "Judgement") $ ReferEnemy nyx
