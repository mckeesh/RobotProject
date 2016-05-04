module Robot where
  import Action
  import State

  type Name = String
--  type Robot = Action -> State -> State

  addAction :: Action -> State -> State
  addAction a s = let newQueue = (actionQueue s) ++ [a] in
                        let updateActionQueue q = q { actionQueue = newQueue} in
                            updateActionQueue s


