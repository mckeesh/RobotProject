module State where
  import Action

  data State = State { actionQueue :: [Action]
                     , currentTemp :: Int
                     , currentHumidity :: Int
                     , currentPressure :: Int
                     } deriving (Show)
