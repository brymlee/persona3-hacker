module Main where

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
import Characters.Tanaka
import Characters.Mutatsu
import Characters.Mamoru
import Characters.Nozomi
import Characters.Akinari
import Characters.Aigis
import Enemies.Nyx
import Enemies.CarnalSnake
import Enemies.FierceCyclops
import Enemies.JotunOfGrief
import Enemies.NobleSeeker
import Enemies.WorldBalance
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
import SocialLinks.Devil
import SocialLinks.Tower
import SocialLinks.Star
import SocialLinks.Moon
import SocialLinks.Sun
import SocialLinks.Judgement
import SocialLinks.Aeon
import SocialLink hiding (String)
import System.Environment
import System.IO

type Value = (SocialLinks, Groups, Characters, Enemies)
type State' = State Value Value

enemies :: Enemies
enemies = [nyx,
           carnalSnake,
           fierceCyclops,
           jotunOfGrief,
           nobleSeeker,
           worldBalance]

characters :: Characters
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
              andre,
              tanaka,
              mutatsu,
              mamoru,
              nozomi,
              akinari, 
              (toCharacter nyx),
              aigis]

groups :: Groups
groups = [sees]

socialLinks :: SocialLinks
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
               temperance,
               devil,
               tower,
               star,
               moon,
               sun,
               judgement,
               aeon]

parse :: String -> String
parse [] = ""
parse [x] = parse []
parse xs = parseOpen (tail xs) $ head xs

parseOpen :: String -> Char -> String
parseOpen [] _ = parse []
parseOpen xs '{' = parseKey (tail xs) $ head xs
parseOpen _xs _ = parse []

parseKey :: String -> Char -> String
parseKey [] _ = parse []
parseKey xs ' ' =  parseKey (tail xs) $ head xs
parseKey xs '\"' = parseKey' xs $ take 10 xs
parseKey _xs _ = parse []

parseKey' :: String -> String -> String
parseKey' [] _ = parse []
parseKey' xs "characters" = parseCharacters xs
parseKey' _xs _ = parse []

parseCharacters :: String -> String
parseCharacters [] = parse []
parseCharacters xs = parseCharacters' $ drop 10 xs 

parseCharacters' :: String -> String
parseCharacters' [] = parse []
parseCharacters' xs = parseCharacters'' (tail xs) $ head xs

parseCharacters'' [] _ = parse []
parseCharacters'' xs '\"' = show characters
parseCharacters'' _xs _ = parse []

main = do
  args <- getArgs
  putStrLn $ parse $ head args

--getValue :: State'
--getValue = do
--put (socialLinks, groups, characters, enemies)
--result <- get
--return result
--let r = evalState getValue $ ([], [], [], [])
