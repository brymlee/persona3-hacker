module Enemies.JotunOfGrief where

import Prim hiding (String)
import SocialLink (Enemy(..), Character(..), String(..))
import Data.Function as F

infixr 0 F.apply as $

jotunOfGrief :: Enemy
jotunOfGrief = Enemy $ Character [String "Jotun Of Grief"]
