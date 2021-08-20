module Sees where

import Characters.Mitsuru (mitsuru)
import Characters.Fuuka (fuuka)
import Characters.Yukari (yukari)
import Characters.Aigis (aigis)
import SocialLink (Group(..))

sees :: Group 
sees = Group "SEES" [mitsuru, fuuka, yukari, aigis]
