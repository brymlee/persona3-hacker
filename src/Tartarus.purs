module Tartarus (Floor(..)) where

import Data.Eq (class Eq)
import Data.Show (class Show)

data Floor = Floor215 | 
             Floor224 | 
             Floor240 |
             Floor254
derive instance eqFloor :: Eq Floor
instance showFloor :: Show Floor where
  show (Floor215) = "Floor215"
  show (Floor224) = "Floor224"
  show (Floor240) = "Floor240"
  show (Floor254) = "Floor254"
