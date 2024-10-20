-module(lesson2_task13).
-export([decode/1]).

decode([]) -> [];
decode([{Count, X} | Tail]) -> lists:duplicate(Count, X) ++ decode(Tail).
