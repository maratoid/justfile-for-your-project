mod deps 'recipes/modules/deps/module.just'
mod code 'recipes/modules/code/module.just'

import 'recipes/utils/utils.just'
import 'recipes/utils/help.just'

default:
    @just --list
