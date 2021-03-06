# source-tools 0.6

by Lin Jen-Shin ([godfat](http://godfat.org))

## LINKS:

* [github](https://github.com/godfat/source-tools)
* [rubygems](https://rubygems.org/gems/source-tools)
* [rdoc](http://rdoc.info/github/godfat/source-tools)

## DESCRIPTION:

 source code tools collection

## FEATURES:

    $ source-tools
    source-tools st:chmod                  # fix files(644) and directories(755) permission recursively.
    source-tools st:html_wrap[glob]        # Wrap html with comments at the beginning and the end of file (for tracking partial template on generated html)
    source-tools st:strip[spaces]          # Strip trailing whitespace from source files, also normalize tabs to spaces, and an newline at end of file
    source-tools st:t:.bashrc              # create a common .bashrc file
    source-tools st:t:.gemrc[project]      # create a user gem only .gemrc file
    source-tools st:t:.gitconfig[project]  # create a common .gitconfig file
    source-tools st:t:.gitignore           # create a common .gitignore file
    source-tools st:t:.vimrc               # create a common .vimrc file
    source-tools st:t:Rakefile[project]    # create a Rakefile template for bones.
    source-tools st:t:config.fish          # create a common config.fish file
    source-tools st:t:mime.types           # create a common mime.types file
    source-tools st:t:nginx.conf[project]  # create an nginx config file

## SYNOPSIS:

## REQUIREMENTS:

## INSTALL:

* gem install source-tools

## LICENSE:

Apache License 2.0

Copyright (c) 2008-2009, Lin Jen-Shin (godfat)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
