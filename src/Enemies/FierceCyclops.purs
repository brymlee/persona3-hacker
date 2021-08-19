module Enemies.FierceCyclops where

import Prim hiding (String)
import SocialLink (Enemy(..), Character(..), String(..))
import Data.Function as F

infixr 0 F.apply as $

fierceCyclops :: Enemy
fierceCyclops = Enemy $ Character [String "Fierce Cyclops"]
