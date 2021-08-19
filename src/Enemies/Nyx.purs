module Enemies.Nyx where

import Prim hiding (String)
import SocialLink (Enemy(..), Character(..), String(..))
import Data.Function as F

infixr 0 F.apply as $

nyx :: Enemy
nyx = Enemy $ Character [String "Nyx"]
