Submarine
=========

Navigate the murky waters of git submodules
-------------------------------------------

Submarine attempts to make managing a project's dependencies with git submodules less cumbersome, more developer-friendly and more familiar, by corraling its commands into a familiar _package manager_ workflow.

## Core Concept

Install Submarine on your system and then use it in any git directory to manage your submodules, just like you would with composer, npm, etc.

However, where git submodules will, by default, fetch one level of submodule dependencies, Submarine will fetch all dependencies recursively. However, instead of installing in recursive nested subdirectories, Submarine will add these dependency repos in a flattened structure within the configured submodules directory, thus avoiding the occurrence of multiple duplicated nested submodules.

Also, by default, Submarine will only fetch a shallow clone of a repo, truncating the repo's history to 1 revision, which lightens a project's footprint.

An installed submodule remains a git repo, however the core concept here is make any required updates to a dependency upstream and to strictly treat dependencies as third-parties.

## Versioning

TODO

## Autoloading

After requiring a repo in your project, Submarine will create an _autoload_ bash script within the configured submodules directory. Using bash to `source` this file will declare a variable (within the scope of the calling process) as a normalized version of the `name` of the required submodule. This variable's value is an absolute path to the submodule's main directory which allows a project to refer to a dependency dynamically.
