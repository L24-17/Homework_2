-module(lesson2_task10).
-export([encode/1]).

encode(List) -> encode(List, []).

encode([], Acc) -> Acc;
encode([X | Tail], []) -> encode(Tail, [{1, X}]);
encode([X | Tail], [{Count, X} | Rest]) -> encode(Tail, [{Count + 1, X} | Rest]);
encode([X | Tail], Acc) -> encode(Tail, [{1, X} | Acc]).