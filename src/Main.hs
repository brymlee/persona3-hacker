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
import SocialLinks.Fool 
import SocialLinks.Magician 
import SocialLinks.Priestess 
import SocialLinks.Empress 
import SocialLinks.Emperor 
import SocialLink 

type Value = (SocialLinks, Groups, Characters)
type State' = State Value Value

characters :: [Character]
characters = [mitsuru, kenji, fuuka, hidetoshi, emiri]

groups :: [Group]
groups = [sees]

socialLinks :: [SocialLink]
socialLinks = [fool, magician, priestess, empress, emperor]

getValue :: State'
getValue = do
  put (socialLinks, groups, characters)
  result <- get
  return result

main :: IO()
main = do
  putStrLn $ show $ evalState getValue $ ([], [], [])
