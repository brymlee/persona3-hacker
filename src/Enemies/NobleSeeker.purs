module Enemies.NobleSeeker (nobleSeeker) where

import SocialLink (Enemy(..), Character(..))
import Data.Function as F

infixr 0 F.apply as $

nobleSeeker :: Enemy
nobleSeeker = Enemy $ Character ["Noble Seeker"]
