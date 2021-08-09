module Sees where

import Prelude hiding (String)
import Characters.Mitsuru 
import Characters.Fuuka 
import Characters.Yukari
import Characters.Aigis
import SocialLink

sees :: Group 
sees = Group (String "SEES") [mitsuru, fuuka, yukari, aigis]
