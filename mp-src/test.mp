prologues:=3;
outputformat:="svg";
outputtemplate:=("%j_%c" & "." & outputformat);

verbatimtex
%&latex
\documentclass{minimal}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{mathrsfs}
\begin{document}
etex

input latexmp;
input hatching;

beginfig(0);
    u := 23;
    path line_reals, manifold, line_path, map_line;
    picture full_manifold, real_line;

    real_line = image(
        pair endp;

        endp := (3.3u, 3.3u);

        line_reals = (1u,1u)..endp;

        draw line_reals;

        draw (1u, 1u) withpen pencircle scaled 3;
        label.llft(btex $a$ etex, (1u,1u));

        draw endp withpen pencircle scaled 3;
        label.urt(btex $b$ etex, endp);

        label(btex $\mathbb{R}$ etex, (2u, 2.4u));
    );

    full_manifold = image(
        manifold = (1.5u,2u)..(3u, 3u)..(4u, 4u)..(5u, 6u)..(7u, 3u)..(3.5u,1u)..cycle;

        line_path = (2u,2u){right}..(3.3u,2.1u)..(4.2u,3u)..(5u,2.8u)..{up}(5.4u,3.6u);

        draw manifold;
        draw line_path shifted (0.7u, 0.2u) dashed evenly;

        label(btex $\mathscr{U}_\alpha \subset \mathcal{M}$ etex, (8.5u, 5u));

        draw (2.7u,2.2u) withpen pencircle scaled 3;
        label.llft(btex $Q(a)$ etex, (2.7u,2.2u) shifted (0.1u, 0));

        draw (6.1u,3.8u) withpen pencircle scaled 3;
        label.urt(btex $Q(b)$ etex, (6.1u,3.8u));
    );

    map_line = (0.33u, 5u)..(1.6u, 4u)..(4.1u, 3u);

    draw real_line shifted (-2u, 3u);
    draw full_manifold;

    draw map_line;
    drawarrow subpath (0, 1.3) of map_line;

    label.urt(btex $Q$ etex, point 1.3 of map_line);
endfig;


end