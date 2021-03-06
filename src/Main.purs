module Main (main) where

import Effect (Effect)
import Effect.Console (log)
import Data.Unit (Unit)
import Query (query)
import Data.Functor (map)
import Data.String (joinWith)
import Data.Show (show)
import Data.Function (($))

main :: Effect Unit
main = do
  log $ joinWith " " $ map (\ it -> show it) $ query ["Characters"]
