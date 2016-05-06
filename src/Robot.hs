module Robot where
  import Action
  import State

  type Name = String
--  type Robot = Action -> State -> State

  -- *BASIC*
  --let s = State [] 0 0 0
  --let s2 = addAction MoveForward s
  --addAction MoveBack s2
  addAction :: Action -> State -> State
  addAction a s = let newQueue = (actionQueue s) ++ [a] in
                        let updateActionQueue q = q { actionQueue = newQueue} in
                            updateActionQueue s

  getNextAction :: State -> Action
  getNextAction s = let actionList = (actionQueue s) in
                      head actionList

  removeTopAction :: State -> State
  removeTopAction s = let updateActionQueue q = q { actionQueue = tail (actionQueue s)} in
      updateActionQueue s
