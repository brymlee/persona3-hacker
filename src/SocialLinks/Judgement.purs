module SocialLinks.Judgement (judgement) where

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
                   Host(..))
import Data.Maybe (Maybe(..))
import Tartarus (Floor(..))
import Enemies.Nyx (nyx)
import Enemies.NobleSeeker (nobleSeeker)
import Enemies.CarnalSnake (carnalSnake)
import Enemies.WorldBalance (worldBalance)
import Enemies.FierceCyclops (fierceCyclops)
import Enemies.JotunOfGrief (jotunOfGrief)
import Data.Function (($))

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
                              (Rank10 (Reach Floor254))) "Judgement" $ ReferEnemy nyx
