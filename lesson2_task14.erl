-module(lesson2_task14).
-export([duplicate/1]).

duplicate([]) -> [];
duplicate([X | Tail]) -> [X, X | duplicate(Tail)].
