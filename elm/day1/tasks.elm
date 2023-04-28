prod: List a -> number
prod stuff = List.foldl (*) 1 stuff

type alias Point = { x : number, y : number, z : number }
x_axis: List Point -> List number
x_axis points = List.map (\p -> p.x) points
