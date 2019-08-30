# Standard Ruby Linter

Docker image to enable running [standardrb] in a multi-ruby, multi-gem development environment.

## Usage

From the top-level directory of your project:

```
docker run --rm -v $(pwd):/app ministryofjustice/standardrb standardrb
```

...or:

```
docker run --rm -v $(pwd):/app ministryofjustice/standardrb standardrb --fix
```

## Why

If you use a ruby version manager such as [rvm], and/or you use [bundler binstubs], you might have trouble running a `globally` installed version of [standardrb].

Typically, you might see errors like this:

```
...can't find gem standard (>= 0.a) with executable standardrb (Gem::GemNotFoundException)
```

This project provides a minimal docker image which only contains standardrb, so it will never conflict with anything in your development environment.


[standardrb]: https://github.com/testdouble/standard
[rvm]: https://rvm.io
[bundler binstubs]: https://bundler.io/man/bundle-binstubs.1.html
