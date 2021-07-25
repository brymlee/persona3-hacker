module Main where

import Prelude hiding (String)
import qualified Data.String as S
import Control.Monad.State 

type String' = S.String
data String = String String'

instance Show String where
  show (String s) = s

instance Eq String where
  (String a) == (String b) = a == b

data Character = Character String String deriving (Show)
type Characters = [Character]
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

type Host = Either Group Character 
type Arcana = String
data Rank = Rank Int Trigger deriving Show
data Date = Date Int Int deriving Show
data Trigger = Automatic (Maybe Date) | Skip Rank | Choose String | Say String | Confront String deriving (Show)
type Ranks = [Rank]
data SocialLink = SocialLink Ranks Arcana Host deriving (Show)
type SocialLinks = [SocialLink]
type Value = (SocialLinks, Groups, Characters)
type State' = State Value Value

getValue :: State'
getValue = do
  let mitsuru = Character (String "Mitsuru") $ String "Kirijo"
  let kenji = Character (String "Kenji") $ String "Tomochika"
  let characters = [mitsuru, kenji]
  let sees = Group (String "SEES") [mitsuru]
  let groups = [sees]
  let fool = SocialLink [Rank 1 (Automatic (Just (Date 4 18))),
                         Rank 2 (Automatic (Just (Date 4 20))),
                         Rank 3 (Automatic (Just (Date 5 9))),
                         Rank 4 (Automatic (Just (Date 7 7))),
                         Rank 5 (Automatic (Just (Date 7 22))),
                         Rank 6 (Automatic (Just (Date 11 2))),
                         Rank 7 (Automatic (Just (Date 11 4))),
                         Rank 9 (Automatic (Just (Date 11 28))),
                         Rank 8 (Skip (Rank 9 (Automatic (Just (Date 11 28))))),
                         Rank 10 (Choose (String "Spare Ryoji on December 31st"))] (String "Fool") $ Left sees
  let magician = SocialLink [Rank 1 (Automatic (Just (Date 4 22))),
                             Rank 2 (Say (String "No/That's a secret -> I like older women/I like them all")),
                             Rank 3 (Say (String "What, life? -> Go for it")),
                             Rank 4 (Say (String "anything -> Gool luck")),
                             Rank 5 (Say (String "I agree")),
                             Rank 6 (Say (String "anything -> I have 30-year goals")),
                             Rank 7 (Say (String "What's wrong -> Bride-To-Be Magazine -> That's great. Congrats!")),
                             Rank 8 (Say (String "Are you in trouble? -> You should go with her/You should talk to her")),
                             Rank 9 (Confront (String "Emiri")),
                             Rank 10 (Automatic Nothing)] (String "Magician") $ Right kenji
  let socialLinks = [fool, magician]
  put (socialLinks, groups, characters)
  result <- get
  return result

main :: IO()
main = do
  putStrLn $ show $ evalState getValue $ ([], [], [])
