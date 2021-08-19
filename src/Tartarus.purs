module Tartarus where

import Data.Eq

data Floor = Floor215 | 
             Floor224 | 
             Floor240 |
             Floor254

derive instance eqFloor :: Eq Floor
