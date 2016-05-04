module Action where
  data Action = MoveForward | MoveBack |
         RotateClockwise | RotateCounter |
         GetTemp | GetHumidity | GetPressure deriving (Show)
