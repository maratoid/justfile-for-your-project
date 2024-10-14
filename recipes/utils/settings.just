# set shell
set shell := ["/bin/zsh", "-cu"]

# allow duplicate recipe names
set allow-duplicate-recipes := true
# load a dot-env file every time a recipe is run
set dotenv-load := true
# path to dot-env file to load
set dotenv-path := "recipes/.justenv"
# pass recipe arguments as positional arguments to commands. See https://github.com/casey/just?tab=readme-ov-file#positional-arguments
set positional-arguments := true

# reusable shebng line for recipes
shebang := '''
    /usr/bin/env zsh
    ```[[ -n "${DEBUG:-}" ]] && echo 'setopt xtrace' || true```
'''
# reusable way to call just recipes from just recipes
just_call := "just --dotenv-path " + justfile_directory() / "recipes" / ".justenv"
