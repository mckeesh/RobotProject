module Robot where
  import Action
  import State
  import RobotHelpers

  -- *BASIC*
  --let s = State [] 0 0 0
  --let s2 = addAction MoveForward s
  --addAction MoveBack s2
  addAction :: Action -> State -> State
  addAction a s = let newQueue = (actionQueue s) ++ [a] in
                        let updateActionQueue oldstate = oldstate { actionQueue = newQueue} in
                            updateActionQueue s

  popAction :: State -> (Maybe Action, State)
  popAction s = (getNextAction s, removeTopAction s)

  setTemp :: Int -> State -> State
  setTemp i s = let updateTemp oldstate = oldstate { currentTemp = i } in
                  updateTemp s

  getTemp :: State -> Int
  getTemp s = currentTemp s 
