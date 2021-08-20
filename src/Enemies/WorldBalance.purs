module Enemies.WorldBalance (worldBalance) where

import SocialLink (Enemy(..), Character(..))
import Data.Function as F

infixr 0 F.apply as $

worldBalance :: Enemy
worldBalance = Enemy $ Character ["World Balance"]
