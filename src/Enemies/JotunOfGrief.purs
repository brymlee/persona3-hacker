module Enemies.JotunOfGrief (jotunOfGrief) where

import SocialLink (Enemy(..), Character(..))
import Data.Function as F

infixr 0 F.apply as $

jotunOfGrief :: Enemy
jotunOfGrief = Enemy $ Character ["Jotun Of Grief"]
