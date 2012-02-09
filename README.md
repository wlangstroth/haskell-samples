# Haskell Samples

Some samples of Haskell for the beginner that aren't about math, or incredibly
intimidating.

## How

You'll need to download the [Haskell
Platform](http://hackage.haskell.org/platform/), install it on your system. Then
you'll have access to most of what you need to play with Haskell.

Once installed, try running the first program:

    runghc 01_not_so_bad.hs

You should see that it is, indeed, not so bad to get into Haskell.

If you want to compile the programs, use

    ghc 01_not_so_bad.hs

One thing to note, however, is that by default, ghc compiles statically, and
does no optimizing. So you might get the impression that Haskell compilers
always produce huge binaries, and they're slow. Not so. If you want to see a
smaller binary, use the -dynamic flag. If you want to see more efficient code,
add the `-O` flag, with a level of optimization. For example,

    ghc -dynamic -O2 01_not_so_bad.hs

## Why

For the average programmer, Haskell might seem like a giant ivory tower of a
language. In reality, it does the same kinds of things that Python, Ruby, or
Java do, but in a slightly different way. So I thought I would introduce Haskell
as a plain old language, doing ordinary things, and only later build up to the
part where it's a super amazing death ray of awesome.

## Further Reading

If these examples are far too simplistic, these might be more to your liking:

[Haskell Notes And Examples](http://www.vex.net/~trebla/haskell/index.xhtml)
