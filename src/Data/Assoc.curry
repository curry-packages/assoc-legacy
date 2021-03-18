------------------------------------------------------------------------------
--- Library to deal with a single global association between strings.
---
--- @author Michael Hanus
------------------------------------------------------------------------------

module Data.Assoc ( setAssoc,getAssoc ) where

--- Defines a global association between two strings.
--- Both arguments must be evaluable to ground terms before applying
--- this operation.
setAssoc :: String -> String -> IO ()
setAssoc key val = (prim_setAssoc $## key) $## val

prim_setAssoc :: String -> String -> IO ()
prim_setAssoc external


--- Gets the value associated to a string.
--- Nothing is returned if there does not exist an associated value.
getAssoc :: String -> IO (Maybe String)
getAssoc key = prim_getAssoc $## key

prim_getAssoc :: String -> IO (Maybe String)
prim_getAssoc external

