module Query (query, socialLinks, groups, characters, enemies, Query(..), tail) where

import Sees (sees)
import Characters.Hidetoshi (hidetoshi) 
import Characters.Mitsuru (mitsuru)
import Characters.Fuuka (fuuka)
import Characters.Kenji (kenji)
import Characters.Emiri (emiri)
import Characters.Bunkichi (bunkichi)
import Characters.Mitsuko (mitsuko)
import Characters.Yukari (yukari)
import Characters.Kazushi (kazushi)
import Characters.Chihiro (chihiro)
import Characters.Maya (maya)
import Characters.Keisuke (keisuke)
import Characters.Yuko (yuko)
import Characters.Maiko (maiko)
import Characters.Ryoji (ryoji)
import Characters.Andre (andre)
import Characters.Tanaka (tanaka)
import Characters.Mutatsu (mutatsu)
import Characters.Mamoru (mamoru)
import Characters.Nozomi (nozomi)
import Characters.Akinari (akinari)
import Characters.Aigis (aigis)
import Enemies.Nyx (nyx)
import Enemies.CarnalSnake (carnalSnake)
import Enemies.FierceCyclops (fierceCyclops)
import Enemies.JotunOfGrief (jotunOfGrief)
import Enemies.NobleSeeker (nobleSeeker)
import Enemies.WorldBalance (worldBalance)
import SocialLinks.Fool (fool)
import SocialLinks.Magician (magician)
import SocialLinks.Priestess (priestess)
import SocialLinks.Empress (empress)
import SocialLinks.Emperor (emperor)
import SocialLinks.Hierophant (hierophant)
import SocialLinks.Lovers (lovers)
import SocialLinks.Chariot (chariot)
import SocialLinks.Justice (justice)
import SocialLinks.Hermit (hermit)
import SocialLinks.Fortune (fortune)
import SocialLinks.Strength (strength)
import SocialLinks.HangedMan (hangedMan)
import SocialLinks.Death (death)
import SocialLinks.Temperance (temperance)
import SocialLinks.Devil (devil)
import SocialLinks.Tower (tower)
import SocialLinks.Star (star)
import SocialLinks.Moon (moon)
import SocialLinks.Sun (sun)
import SocialLinks.Judgement (judgement)
import SocialLinks.Aeon (aeon)
import Data.Array (concat, length, head)
import Data.Array as A
import SocialLink (Enemies, Groups, Characters, SocialLinks, toCharacter)
import Data.Show (class Show, show)
import Data.Maybe (Maybe(..))
import Data.Eq ((==))
import Data.Ord ((<=))
import Data.Boolean (otherwise)
import Data.Function (($))

tail :: forall a. Array a -> Array a
tail xs | (length xs) <= 1 = []
        | otherwise = tail' $ A.tail xs

tail' :: forall a. Maybe (Array a) -> Array a
tail' (Just xs) = xs
tail' Nothing = []

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
               aeon, 
               fortune]

data Query = ReferCharacters Characters |
             ReferEnemies Enemies | 
             ReferSocialLinks SocialLinks |
             ReferGroups Groups 

type Queries = Array Query

instance showResult' :: Show Query where
  show (ReferCharacters xs) = show xs 
  show (ReferEnemies xs) = show xs
  show (ReferSocialLinks xs) = show xs 
  show (ReferGroups xs) = show xs

query :: Array String -> Queries
query xs | (length xs) == 0 = []
         | otherwise = query' xs []

query' :: Array String -> Queries -> Queries
query' xs results | (length xs) == 0 = results
                  | otherwise = query' (tail xs) $ concat [results, query'' (head xs)]

query'' :: Maybe String -> Queries 
query'' (Just s) = query''' s
query'' Nothing = []

query''' :: String -> Queries 
query''' "Characters" = [ReferCharacters characters]
query''' _ = []
