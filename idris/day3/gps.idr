-- a trip is a location type equipped with a map from a time value to a location value
-- the "**" syntax here means that the second element of this pair may depend on the first
Trip : (Location : Type ** (Double -> Location))
