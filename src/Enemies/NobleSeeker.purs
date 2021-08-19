module Enemies.NobleSeeker where

import Prim hiding (String)
import SocialLink (Enemy(..), Character(..), String(..))
import Data.Function as F

infixr 0 F.apply as $

nobleSeeker :: Enemy
nobleSeeker = Enemy $ Character [String "Noble Seeker"]
