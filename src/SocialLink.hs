module SocialLink where

import Prelude hiding (String)
import qualified Data.String as S

data String = String S.String

instance Show String where
  show (String s) = s

instance Eq String where
  (String a) == (String b) = a == b

data Rank1 = Rank1 Trigger deriving (Show)
data Rank2 = Rank2 Trigger deriving (Show)
data Rank3 = Rank3 Trigger deriving (Show)
data Rank4 = Rank4 Trigger deriving (Show)
data Rank5 = Rank5 Trigger deriving (Show)
data Rank6 = Rank6 Trigger deriving (Show)
data Rank7 = Rank7 Trigger deriving (Show)
data Rank8 = Rank8 Trigger deriving (Show)
data Rank9 = Rank9 Trigger deriving (Show)
data Rank10 = Rank10 Trigger deriving (Show)
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
                       deriving (Show)
data Ranks = Ranks Rank1 Rank2 Rank3 Rank4 Rank5 Rank6 Rank7 Rank8 Rank9 Rank10 deriving (Show)
data Message = Anything | 
               ChooseOne [String] | 
               Only String 
                 deriving (Show)
type Lines = [Message]
data Event' = Date (Maybe (Int, Int)) |
              SocialLinkReference SocialLink RankReference 
                deriving (Show)
data Trigger = Event Event' | 
               Skip RankReference | 
               Choose String | 
               Say Lines | 
               Confront Character |
               LookAway
                 deriving (Show)
type Host = Either Group Characters 
type Arcana = String
data SocialLink = SocialLink Ranks Arcana Host deriving (Show)
type SocialLinks = [SocialLink]
data Group = Group String [Character] deriving (Show)
type Groups = [Group]

class HasName a where
  toName :: a -> String

instance HasName Group where
  toName (Group name _) = name

validateGroup :: Groups -> Maybe Group
validateGroup [] = Nothing
validateGroup [group] = Just group
validateGroup groups = Just $ head groups

class ToGroup a where
  toGroup :: Groups -> a -> Maybe Group

instance ToGroup String where
  toGroup groups name = validateGroup $ filter (\ group -> (toName group) == name) groups
type Name = String
data Character = Character [Name] deriving (Show)
type Characters = [Character]
