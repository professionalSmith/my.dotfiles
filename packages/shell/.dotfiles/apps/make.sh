# Add GNU Make to PATH on macOS with Homebrew
# This ensures that the GNU version of make is used instead of the BSD version.
# BSD make is the default on macOS, but GNU Make provides additional features and improvements.
PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

alias make='gmake'