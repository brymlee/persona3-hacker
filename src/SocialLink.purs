module SocialLink where

import Prim hiding (String)
import Prim as P
import Data.Show (class Show)
import Tartarus (Floor)
import Data.Maybe (Maybe(..))
import Data.Eq 
import Data.Function as F 
import Data.Array (filter, head)
import Data.Tuple (Tuple)

infixr 0 F.apply as $

data String = String P.String

instance Show String where
  show (String s) = s

instance Eq String where
  eq (String a) (String b) = a == b

data Rank1 = Rank1 Trigger 
derive instance eqRank1 :: Eq Rank1

data Rank2 = Rank2 Trigger 
derive instance eqRank2 :: Eq Rank2

data Rank3 = Rank3 Trigger 
derive instance eqRank3 :: Eq Rank3

data Rank4 = Rank4 Trigger 
derive instance eqRank4 :: Eq Rank4

data Rank5 = Rank5 Trigger 
derive instance eqRank5 :: Eq Rank5

data Rank6 = Rank6 Trigger 
derive instance eqRank6 :: Eq Rank6

data Rank7 = Rank7 Trigger 
derive instance eqRank7 :: Eq Rank7

data Rank8 = Rank8 Trigger 
derive instance eqRank8 :: Eq Rank8

data Rank9 = Rank9 Trigger 
derive instance eqRank9 :: Eq Rank9

data Rank10 = Rank10 Trigger 
derive instance eqRank10 :: Eq Rank10 

data RankReference = ReferRank1 Rank1 | 
                     ReferRank2 Rank2 |
                     ReferRank3 Rank3 |
                     ReferRank4 Rank4 |
                     ReferRank5 Rank5 |
                     ReferRank6 Rank6 |
                     ReferRank7 Rank7 |
                     ReferRank8 Rank8 |
                     ReferRank9 Rank9 |
                     ReferRank10 Rank10 
derive instance eqRankReference :: Eq RankReference

data Ranks = Ranks Rank1 
                   Rank2 
                   Rank3 
                   Rank4 
                   Rank5 
                   Rank6 
                   Rank7 
                   Rank8 
                   Rank9 
                   Rank10 
derive instance eqRanks :: Eq Ranks

data Message = Anything | 
               ChooseOne (Array String) | 
               Only String 

derive instance eqMessage :: Eq Message

type Lines = Array Message
data Event' = Date (Maybe (Tuple Int Int)) |
              SocialLinkReference SocialLink RankReference 
derive instance eqEvent' :: Eq Event'

data Trigger = Event Event' | 
               Skip RankReference | 
               Choose String | 
               Say Lines | 
               Confront Character |
               Reach Floor |
               Defeat Enemy |
               LookAway
derive instance eqTrigger :: Eq Trigger

data Enemy = Enemy Character
derive instance eqEnemy :: Eq Enemy

class ToCharacter a where
  toCharacter :: a -> Character

instance ToCharacter Enemy where
  toCharacter (Enemy character) = character

data Host = ReferGroup Group | 
            ReferCharacters (Array Character) |
            ReferEnemy Enemy
derive instance eqHost :: Eq Host

type Arcana = String
data SocialLink = SocialLink Ranks Arcana Host 
derive instance eqSocialLink :: Eq SocialLink

type SocialLinks = Array SocialLink
data Group = Group String (Array Character) 
derive instance eqGroup :: Eq Group
type Groups = Array Group

class HasName a where
  toName :: a -> String

instance HasName Group where
  toName (Group name _) = name

validateGroup :: Groups -> Maybe Group
validateGroup [] = Nothing
validateGroup [group] = Just group
validateGroup groups = head groups

class ToGroup a where
  toGroup :: Groups -> a -> Maybe Group

instance ToGroup String where
  toGroup groups name = validateGroup $ filter (\ group -> (toName group) == name) groups
type Name = String
data Character = Character (Array Name) 
derive instance eqCharacter :: Eq Character
type Characters = Array Character
type Enemies = Array Enemy
