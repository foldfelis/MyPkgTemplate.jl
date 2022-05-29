module MyPkgTemplate

using PkgTemplates

export t

const T = Template(
    user="foldfelis",
    dir=pwd(),
    julia=v"1.6",
    plugins=[
        Codecov(),
        GitHubActions(
            linux=true,
            windows=true,
            x64=true,
            coverage=true,
            extra_versions=["1.6", "1.7", "nightly"],
        ),
        Documenter{GitHubActions}(),
    ],
)

t(name::String) = T(name)

end
