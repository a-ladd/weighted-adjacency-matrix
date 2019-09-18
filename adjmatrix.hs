import Data.Function

--this implementation covers undirected graphs *only*, since direction does not matter
type Edge = (Integer, Integer)
--           (  x   ,    y   )
-- a single edge from vertex x to y. since these matrices are symmetrical,
-- we store only (x,y) and do not bother with (y,x) to save space and compute time
-- note x and y do not actually have to share an edge; 'pair' would be a more accurate name

type AdjMatrix = [Edge, Integer]
--2 vertices and an integer value (0 or 1, for now) indicating if they share an edge
-- example:  a graph with 3 edges, a b and c
--                 (a,b), 1          
--                 (b,c), 0         (a)---(b)
--                 (c,a), 1          |
--                                  (c)
