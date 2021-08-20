module Enemies.Nyx (nyx) where

import SocialLink (Enemy(..), Character(..))
import Data.Function as F

infixr 0 F.apply as $

nyx :: Enemy
nyx = Enemy $ Character ["Nyx"]
