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
data Rank1 = Rank1 Rank' deriving (Show)
data Rank2 = Rank2 Rank' deriving (Show)
data Rank3 = Rank3 Rank' deriving (Show)
data Rank4 = Rank4 Rank' deriving (Show)
data Rank5 = Rank5 Rank' deriving (Show)
data Rank6 = Rank6 Rank' deriving (Show)
data Rank7 = Rank7 Rank' deriving (Show)
data Rank8 = Rank8 Rank' deriving (Show)
data Rank9 = Rank9 Rank' deriving (Show)
data Rank10 = Rank10 Rank' deriving (Show)
type Rank' = Trigger
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
data Date = Date Int Int deriving Show
data Trigger = Automatic (Maybe Date) | 
               Skip RankReference | 
               Choose String | 
               Say String | 
               Confront String 
                 deriving (Show)
data SocialLink = SocialLink Ranks Arcana Host deriving (Show)
type SocialLinks = [SocialLink]
type Value = (SocialLinks, Groups, Characters)
type State' = State Value Value

mitsuru :: Character
mitsuru = Character (String "Mitsuru") $ String "Kirijo"
                    
kenji :: Character
kenji = Character (String "Kenji") $ String "Tomochika"

fuuka :: Character
fuuka = Character (String "Fuuka") $ String "Yamagishi"

sees :: Group 
sees = Group (String "SEES") [mitsuru, fuuka]

fool :: SocialLink
fool = SocialLink (Ranks (Rank1 (Automatic (Just (Date 4 18))))
                         (Rank2 (Automatic (Just (Date 4 20))))
                         (Rank3 (Automatic (Just (Date 5 9))))
                         (Rank4 (Automatic (Just (Date 7 7))))
                         (Rank5 (Automatic (Just (Date 7 22))))
                         (Rank6 (Automatic (Just (Date 11 2))))
                         (Rank7 (Automatic (Just (Date 11 4))))
                         (Rank8 (Skip (ReferRank9 rank9)))
                         rank9
                         (Rank10 (Choose (String "Spare Ryoji on December 31st")))) (String "Fool") $ Left sees
                           where 
                             rank9 = (Rank9 (Automatic (Just (Date 11 28))))

magician :: SocialLink
magician = SocialLink (Ranks (Rank1 (Automatic (Just (Date 4 22))))
                             (Rank2 (Say (String "No/That's a secret -> I like older women/I like them all")))
                             (Rank3 (Say (String "What, life? -> Go for it")))
                             (Rank4 (Say (String "anything -> Good luck")))
                             (Rank5 (Say (String "I agree")))
                             (Rank6 (Say (String "anything -> I have 30-year goals")))
                             (Rank7 (Say (String "What's wrong -> Bride-To-Be Magazine -> That's great. Congrats!")))
                             (Rank8 (Say (String "Are you in trouble? -> You should go with her/You should talk to her")))
                             (Rank9 (Confront (String "Emiri")))
                             (Rank10 (Automatic Nothing))) (String "Magician") $ Right kenji

priestess :: SocialLink
priestess = SocialLink (Ranks (Rank1 (Automatic Nothing))
                              (Rank2 (Say (String "Sure")))
                              (Rank3 (Say (String "I believe in you -> Anything")))
                              (Rank4 (Say (String "anything -> Oh, I don't think so")))
                              (Rank5 (Say (String "You did a great job -> Anything")))
                              (Rank6 (Say (String "Okay")))
                              (Rank7 (Say (String "Anything -> Anything")))
                              (Rank8 (Say (String "Anthing -> I want to be with you too")))
                              (Rank9 (Say (String "Anthing -> Anything")))
                              (Rank10 (Automatic Nothing))) (String "Priestess") $ Right fuuka

getValue :: State'
getValue = do
  let characters = [mitsuru, kenji, fuuka]
  let groups = [sees]
  let socialLinks = [fool, magician, priestess]
  put (socialLinks, groups, characters)
  result <- get
  return result

main :: IO()
main = do
  putStrLn $ show $ evalState getValue $ ([], [], [])
