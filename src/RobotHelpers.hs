module RobotHelpers where
  import State
  import Action

  getNextAction :: State -> Maybe Action
  getNextAction s = let actionList = (actionQueue s) in
                      case actionList of
                        [] -> Nothing
                        _  -> Just (head actionList)


  removeTopAction :: State -> State
  removeTopAction s = let actionList = (actionQueue s) in
                          case actionList of
                            [] -> s
                            _  -> let updateActionQueue q = q { actionQueue = tail (actionQueue s)} in
                              updateActionQueue s
