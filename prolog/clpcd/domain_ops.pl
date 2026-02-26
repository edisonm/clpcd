:- module(clpcd_domain_ops,
          [ active_clpcd/2,
            active_clpcd_module/3,
            cast_d/3,
            compare_d/4,
            div_d/4,
            rsgn_d/4,
            eval_d/3,
            ceiling_d/3,
            floor_d/3,
            integerp/3,
            numbers_only/2,
            pmone/1
          ]).

:- multifile
        cast_d/3,
        compare_d/4,
        div_d/4,
        rsgn_d/4,
        ceiling_d/3,
        floor_d/3,
        eval_d/3,
        integerp/3,
        numbers_only/2,
        clpcd_module/2.

active_clpcd(Context, CD) :- active_clpcd_module(Context, CD, _).

active_clpcd_module(Context, CD, Module) :-
    '$load_context_module'(File, Context, _),
    module_property(Module, file(File)),
    clpcd_module(CD, Module),
    !.

pmone(1).
pmone(-1).
