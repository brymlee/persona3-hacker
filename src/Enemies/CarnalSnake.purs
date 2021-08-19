module Enemies.CarnalSnake where

import Prim hiding (String)
import SocialLink (Enemy(..), Character(..), String(..))
import Data.Function as F

infixr 0 F.apply as $

carnalSnake :: Enemy
carnalSnake = Enemy $ Character [String "Carnal Snake"]
