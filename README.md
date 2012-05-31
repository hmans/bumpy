# Bumpy

**Bumpy bumps your gem's version number.** It expects your gem's version number to be contained in a file named `./lib/yourgem/version.rb`. Bumpy will parse this file, increase the last part of the contained version number by one, save the file, and create a new git commit (if you're using git).

Bumpy will happily work with whatever version numbering scheme you're using, as long as the last part is a number. For example, it will increase `0.1.8` to `0.1.9`, or `1.2.0.pre.245` to `1.2.0.pre.246`.

## Installation

    gem install bumpy

## Usage

From within your gem's source code directory, simply run:

    bumpy

If you want to jump to a specific version number, you can provide it as a parameter:

    bumpy 2.0.0

For a complete list of options, run:

    bumpy --help

Enjoy. :)

- Hendrik Mans, http://hmans.io
