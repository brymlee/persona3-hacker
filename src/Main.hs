module Main where

import Prelude hiding (String)
import qualified Data.String as S
import Control.Monad.State 
import Sees 
import Characters.Hidetoshi 
import Characters.Mitsuru 
import Characters.Fuuka 
import Characters.Kenji 
import Characters.Emiri
import Characters.Bunkichi
import Characters.Mitsuko
import Characters.Yukari
import Characters.Kazushi
import SocialLinks.Fool 
import SocialLinks.Magician 
import SocialLinks.Priestess 
import SocialLinks.Empress 
import SocialLinks.Emperor 
import SocialLinks.Hierophant
import SocialLinks.Lovers
import SocialLinks.Chariot
import SocialLink 

type Value = (SocialLinks, Groups, Characters)
type State' = State Value Value

characters :: [Character]
characters = [mitsuru, kenji, fuuka, hidetoshi, emiri, bunkichi, mitsuko, yukari, kazushi]

groups :: [Group]
groups = [sees]

socialLinks :: [SocialLink]
socialLinks = [fool, magician, priestess, empress, emperor, hierophant, lovers, chariot]

getValue :: State'
getValue = do
  put (socialLinks, groups, characters)
  result <- get
  return result

main :: IO()
main = do
  putStrLn $ show $ evalState getValue $ ([], [], [])
