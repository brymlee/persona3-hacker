module Main where

import System.Environment
import System.IO
import qualified Data.Text as Text
import qualified Data.Text.Encoding as TextEncoding
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Base64 as Base64
import Parse 

main = do
  args <- getArgs
  putStrLn $ parse $ Base64.decodeBase64 $ TextEncoding.encodeUtf8 $ Text.pack $ head args

--getValue :: State'
--getValue = do
--put (socialLinks, groups, characters, enemies)
--result <- get
--return result
--let r = evalState getValue $ ([], [], [], [])
