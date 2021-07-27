module Main where

import Prelude hiding (String)
import qualified Data.String as S
import Control.Monad.State 
import Hidetoshi 
import Mitsuru 
import Fuuka 
import Kenji 
import Sees 
import Fool 
import Magician 
import Priestess 
import Empress 
import Emperor 
import SocialLink 

type Value = (SocialLinks, Groups, Characters)
type State' = State Value Value

characters :: [Character]
characters = [mitsuru, kenji, fuuka, hidetoshi]

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
