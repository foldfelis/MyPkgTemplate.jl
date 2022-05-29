using MyPkgTemplate
using Documenter

DocMeta.setdocmeta!(MyPkgTemplate, :DocTestSetup, :(using MyPkgTemplate); recursive=true)

makedocs(;
    modules=[MyPkgTemplate],
    authors="JingYu Ning <foldfelis@gmail.com> and contributors",
    repo="https://github.com/foldfelis/MyPkgTemplate.jl/blob/{commit}{path}#{line}",
    sitename="MyPkgTemplate.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://foldfelis.github.io/MyPkgTemplate.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/foldfelis/MyPkgTemplate.jl",
    devbranch="main",
)
