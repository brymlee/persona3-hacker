module SocialLink (($), 
                   Rank1(..), 
                   Rank2(..),
                   Rank3(..),
                   Rank4(..),
                   Rank5(..),
                   Rank6(..),
                   Rank7(..),
                   Rank8(..),
                   Rank9(..),
                   Rank10(..),
                   Ranks(..),
                   RankReference(..),
                   Message(..),
                   Character(..),
                   Trigger(..),
                   Event'(..),
                   Host(..),
                   Enemy(..), 
                   Name, 
                   Lines, 
                   SocialLink(..),
                   Group(..),
                   Arcana,
                   Enemies,
                   Groups,
                   SocialLinks,
                   Characters,
                   toCharacter,
                   class ToCharacter) where

import Data.Show (class Show, show)
import Tartarus (Floor)
import Data.Maybe (Maybe(..))
import Data.Eq 
import Data.Function as F 
import Data.Array (concat, filter, head)
import Data.Tuple (Tuple)
import Data.String (joinWith)

infixr 0 F.apply as $

data Rank1 = Rank1 Trigger 
derive instance eqRank1 :: Eq Rank1
instance showRank1 :: Show Rank1 where
  show (Rank1 it) = joinWith " " $ concat [["Rank1", show it]]

data Rank2 = Rank2 Trigger 
derive instance eqRank2 :: Eq Rank2
instance showRank2 :: Show Rank2 where
  show (Rank2 it) = joinWith " " $ concat [["Rank2", show it]]

data Rank3 = Rank3 Trigger 
derive instance eqRank3 :: Eq Rank3
instance showRank3 :: Show Rank3 where
  show (Rank3 it) = joinWith " " $ concat [["Rank3", show it]]

data Rank4 = Rank4 Trigger 
derive instance eqRank4 :: Eq Rank4
instance showRank4 :: Show Rank4 where
  show (Rank4 it) = joinWith " " $ concat [["Rank4", show it]]

data Rank5 = Rank5 Trigger 
derive instance eqRank5 :: Eq Rank5
instance showRank5 :: Show Rank5 where
  show (Rank5 it) = joinWith " " $ concat [["Rank5", show it]]

data Rank6 = Rank6 Trigger 
derive instance eqRank6 :: Eq Rank6
instance showRank6 :: Show Rank6 where
  show (Rank6 it) = joinWith " " $ concat [["Rank6", show it]]

data Rank7 = Rank7 Trigger 
derive instance eqRank7 :: Eq Rank7
instance showRank7 :: Show Rank7 where
  show (Rank7 it) = joinWith " " $ concat [["Rank7", show it]]

data Rank8 = Rank8 Trigger 
derive instance eqRank8 :: Eq Rank8
instance showRank8 :: Show Rank8 where
  show (Rank8 it) = joinWith " " $ concat [["Rank8", show it]]

data Rank9 = Rank9 Trigger 
derive instance eqRank9 :: Eq Rank9
instance showRank9 :: Show Rank9 where
  show (Rank9 it) = joinWith " " $ concat [["Rank9", show it]]

data Rank10 = Rank10 Trigger 
derive instance eqRank10 :: Eq Rank10 
instance showRank10 :: Show Rank10 where
  show (Rank10 it) = joinWith " " $ concat [["Rank10", show it]]

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
instance showRankReference :: Show RankReference where
  show (ReferRank1 it) = joinWith " " $ concat [["ReferRank1", show it]]
  show (ReferRank2 it) = joinWith " " $ concat [["ReferRank2", show it]]
  show (ReferRank3 it) = joinWith " " $ concat [["ReferRank3", show it]]
  show (ReferRank4 it) = joinWith " " $ concat [["ReferRank4", show it]]
  show (ReferRank5 it) = joinWith " " $ concat [["ReferRank5", show it]]
  show (ReferRank6 it) = joinWith " " $ concat [["ReferRank6", show it]]
  show (ReferRank7 it) = joinWith " " $ concat [["ReferRank8", show it]]
  show (ReferRank8 it) = joinWith " " $ concat [["ReferRank8", show it]]
  show (ReferRank9 it) = joinWith " " $ concat [["ReferRank9", show it]]
  show (ReferRank10 it) = joinWith " " $ concat [["ReferRank10", show it]]

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
instance showRanks :: Show Ranks where
  show (Ranks _1 _2 _3 _4 _5 _6 _7 _8 _9 _10) = joinWith " " $ concat [["Ranks",
                                                                        show _1,
                                                                        show _2,
                                                                        show _3,
                                                                        show _4,
                                                                        show _5,
                                                                        show _6,
                                                                        show _7,
                                                                        show _8,
                                                                        show _9,
                                                                        show _10]]

data Message = Anything | 
               ChooseOne (Array String) | 
               Only String 
derive instance eqMessage :: Eq Message
instance showMessage :: Show Message where
  show (Anything) = "Message Anything"
  show (ChooseOne xs) = joinWith " " $ concat [["Message", show xs]]
  show (Only s) = joinWith " " $ concat [["Message", s]]

type Lines = Array Message

data Event' = Date (Maybe (Tuple Int Int)) |
              SocialLinkReference SocialLink RankReference 
derive instance eqEvent' :: Eq Event'
instance showEvent' :: Show Event' where
  show (Date t) = show t
  show (SocialLinkReference socialLink rankReference) = joinWith " " $ concat [["SocialLinkReference", 
                                                                                show socialLink,
                                                                                show rankReference]]

data Trigger = Event Event' | 
               Skip RankReference | 
               Choose String | 
               Say Lines | 
               Confront Character |
               Reach Floor |
               Defeat Enemy |
               LookAway
derive instance eqTrigger :: Eq Trigger
instance showTrigger :: Show Trigger where
  show (Event event) = joinWith " " $ concat [["Event", show event]]
  show (Skip rankReference) = joinWith " " $ concat [["Skip", show rankReference]]
  show (Choose s) = joinWith " " $ concat [["Choose", s]]
  show (Say lines) = joinWith " " $ concat [["Say", show lines]]
  show (Confront character) = joinWith " " $ concat [["Confront", show character]]
  show (Reach floor) = joinWith " " $ concat [["Reach", show floor]]
  show (Defeat enemy) = joinWith " " $ concat [["Defeat", show enemy]]
  show (LookAway) = "LookAway"

data Enemy = Enemy Character
instance showEnemy :: Show Enemy where
  show (Enemy character) = show character
derive instance eqEnemy :: Eq Enemy

class ToCharacter a where
  toCharacter :: a -> Character

instance ToCharacter Enemy where
  toCharacter (Enemy character) = character

data Host = ReferGroup Group | 
            ReferCharacters (Array Character) |
            ReferEnemy Enemy
derive instance eqHost :: Eq Host
instance showHost :: Show Host where
  show (ReferGroup group) = joinWith " " $ concat [["ReferGroup", show group]]
  show (ReferCharacters xs) = joinWith " " $ concat [["ReferCharacters", show xs]]
  show (ReferEnemy enemy) = joinWith " " $ concat [["ReferEnemy", show enemy]]

type Arcana = String

data SocialLink = SocialLink Ranks Arcana Host 
derive instance eqSocialLink :: Eq SocialLink
instance showSocialLink :: Show SocialLink where
  show (SocialLink ranks arcana host) = joinWith " " $ concat [["SocialLink", show ranks, show arcana, show host]]

type SocialLinks = Array SocialLink

data Group = Group String (Array Character) 
derive instance eqGroup :: Eq Group
instance showGroup :: Show Group where
  show (Group s xs) = joinWith " " $ concat [["Group", s, show xs]]

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
instance showCharacter :: Show Character where
  show (Character xs) = joinWith " " $ concat [["Character"], xs]

type Characters = Array Character
type Enemies = Array Enemy
