module Enemies.CarnalSnake (carnalSnake) where

import SocialLink (Enemy(..), Character(..))
import Data.Function (($))

carnalSnake :: Enemy
carnalSnake = Enemy $ Character ["Carnal Snake"]
