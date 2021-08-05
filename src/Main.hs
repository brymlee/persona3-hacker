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
import Characters.Chihiro
import Characters.Maya
import Characters.Keisuke
import Characters.Yuko
import Characters.Maiko
import Characters.Ryoji
import Characters.Andre
import SocialLinks.Fool 
import SocialLinks.Magician 
import SocialLinks.Priestess 
import SocialLinks.Empress 
import SocialLinks.Emperor 
import SocialLinks.Hierophant
import SocialLinks.Lovers
import SocialLinks.Chariot
import SocialLinks.Justice
import SocialLinks.Hermit
import SocialLinks.Fortune
import SocialLinks.Strength
import SocialLinks.HangedMan
import SocialLinks.Death
import SocialLinks.Temperance
import SocialLink 

type Value = (SocialLinks, Groups, Characters)
type State' = State Value Value

characters :: [Character]
characters = [mitsuru, 
              kenji, 
              fuuka, 
              hidetoshi, 
              emiri, 
              bunkichi, 
              mitsuko, 
              yukari, 
              kazushi, 
              chihiro, 
              maya,
              keisuke,
              yuko,
              maiko,
              ryoji,
              andre]

groups :: [Group]
groups = [sees]

socialLinks :: [SocialLink]
socialLinks = [fool, 
               magician, 
               priestess, 
               empress, 
               emperor, 
               hierophant, 
               lovers, 
               chariot, 
               justice, 
               hermit,
               strength,
               hangedMan,
               death,
               temperance]

getValue :: State'
getValue = do
  put (socialLinks, groups, characters)
  result <- get
  return result

main :: IO()
main = do
  putStrLn $ show $ evalState getValue $ ([], [], [])
