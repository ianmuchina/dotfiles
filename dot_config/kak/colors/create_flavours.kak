## base16-kakoune (https://github.com/leira/base16-kakoune)
## by Leira Hua
## ayu dark scheme by Anon

evaluate-commands %sh{
    base00='rgb:0b0e14'
    base01='rgb:0b0e14'
    base02='rgb:1e232b'
    base03='rgb:686868'
    base04='rgb:bfbdb6'
    base05='rgb:bfbdb6'
    base06='rgb:bfbdb6'
    base07='rgb:bfbdb6'
    base08='rgb:f07178'
    base09='rgb:ffb454'
    base0A='rgb:ffb454'
    base0B='rgb:aad94c'
    base0C='rgb:95e6cb'
    base0D='rgb:59c2ff'
    base0E='rgb:d2a6ff'
    base0F='rgb:d95757'

    ## code
    echo "
        face global value ${base09}
        face global type ${base0A}+b
        face global identifier ${base08}
        face global string ${base0B}
        face global keyword ${base0E}+b
        face global operator ${base05}
        face global attribute ${base0C}
        face global comment ${base03}
        face global meta ${base0D}
        face global builtin ${base0D}+b
    "

    ## markup
    echo "
        face global title ${base0D}+b
        face global header ${base0D}+b
        face global bold ${base0A}+b
        face global italic ${base0E}
        face global mono ${base0B}
        face global block ${base0C}
        face global link ${base09}
        face global bullet ${base08}
        face global list ${base08}
    "

    ## builtin
    echo "
        face global Default ${base05},${base00}
        face global PrimarySelection ${base06},${base0D}
        face global SecondarySelection ${base06},${base0F}
        face global PrimaryCursor ${base00},${base05}
        face global SecondaryCursor ${base06},${base0C}
        face global LineNumbers ${base02},${base00}
        face global LineNumberCursor ${base0A},${base00}
        face global MenuForeground ${base00},${base0D}
        face global MenuBackground ${base00},${base0C}
        face global MenuInfo ${base02}
        face global Information ${base00},${base0A}
        face global Error ${base00},${base08}
        face global StatusLine ${base04},${base01}
        face global StatusLineMode ${base0B}
        face global StatusLineInfo ${base0D}
        face global StatusLineValue ${base0C}
        face global StatusCursor ${base00},${base05}
        face global Prompt ${base0D},${base01}
        face global MatchingChar ${base06},${base02}+b
        face global BufferPadding ${base03},${base00}
    "
}
