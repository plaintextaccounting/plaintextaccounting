# The plaintextaccounting.org website

plaintextaccounting.org is an informative portal for Ledger, hledger, beancount, and the other ledger-likes.

The repo is named `plaintextaccounting.github.io` to make it the Github
Pages site for the
[plaintextaccounting organization](https://github.com/plaintextaccounting/),
so that it can be served with a custom domain, `plaintextaccounting.org`.

## Contributing

It's as easy as forking this Github repo, making your changes, and submitting a pull request.

1. Fork this repository.
2. Make changes to the `md` files, `css`, etc. Don't change the `html` files directly.
3. Run `make` to update the `html` files. This requires pandoc.
4. Commit.
5. Push to to your fork.
6. Submit a pull request.

If you're a recurring contributor, [open an
issue](https://github.com/plaintextaccounting/plaintextaccounting.github.io/issues/new?title=Contributor+requesting+commit+bit&body=Hello,+I+have+made+some+commits+and+would+like+to+have+commit+access.+May+I?)
to request commit access if it is not granted to you. This is a
human-driven process.

## Dependencies

This system requires a few dependencies:

* [make]
* [pandoc]

[make]:   https://en.wikipedia.org/wiki/Make_(software)
[pandoc]: http://pandoc.org/

Optional, to make active development easier:

* [fswatch]
* [livereloadx]
* [LiveReload]

[fswatch]:     https://emcrisostomo.github.io/fswatch/
[livereloadx]: https://nitoyon.github.io/livereloadx/
[LiveReload]:  http://livereload.com/

### Installation of dependencies

#### macOS

Using [Homebrew](https://brew.sh)

For base requirements:

    brew install pandoc

`make` is already available when Xcode is installed.

For all reloading options:

    brew install fswatch npm caskroom/cask/livereload && \
    npm install -g livereloadx

#### Debian (and derivatives) Linux

The version of Pandoc shipped in Debian Stretch is old and lacks required
features (specifically, the "smart" extension for Markdown), so you'll need to
install it from a newer repository. For example:

     sudo apt install -t unstable pandoc

## Making changes

Once you've cloned the repository and setup the tools, make changes to whatever is necessary. **Don't change the `html` files**. The `html` is automatically generated!

Before committing, rebuild the `html`, which requires `pandoc`):

    make

and include it in your commit.

### Accelerating development with automated rebuilds

To rebuild on each file change, which requires [fswatch]:

    make watch

Refresh the page in the browser manually.

To rebuild _and_ reload the browser page on file change, there are two methods.

**Method 1**, which requires [livereloadx]:

    make watch

and in another terminal:

    npm install -g livereloadx
    make livereload

Then visit [`localhost:35729`](http://localhost:35729) in your browser.

**Method 2**, requires [LiveReload]:

1. Add the site folder in the LiveReload GUI
2. Configure custom command `make`
3. Edit away.
