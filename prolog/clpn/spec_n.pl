:- module(spec_n,
          [compare_d/4]).

:- use_module(library(near_utils)).

% Predicates specific to a domain

compare_d(clpn, Op, A, B) :-
    near_compare(Op, A, B).
