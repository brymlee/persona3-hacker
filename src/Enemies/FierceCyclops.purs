module Enemies.FierceCyclops (fierceCyclops) where

import SocialLink (Enemy(..), Character(..))
import Data.Function as F

infixr 0 F.apply as $

fierceCyclops :: Enemy
fierceCyclops = Enemy $ Character ["Fierce Cyclops"]
