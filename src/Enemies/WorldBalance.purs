module Enemies.WorldBalance where

import Prim hiding (String)
import SocialLink (Enemy(..), Character(..), String(..))
import Data.Function as F

infixr 0 F.apply as $

worldBalance :: Enemy
worldBalance = Enemy $ Character [String "World Balance"]
