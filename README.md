# docker-php-code-fixer

[PHP Coding Standards Fixer] analyzes some PHP source code and tries to fix coding standards issues (PSR-1 and PSR-2 compatible). This is a docker image that eases setup.

## About PHP Coding Standars Fixer

> The PHP Coding Standards Fixer tool fixes most issues in your code when you want to follow the PHP coding standards as defined in the PSR-1 and PSR-2 documents.
>
> If you are already using PHP_CodeSniffer to identify coding standards problems in your code, you know that fixing them by hand is tedious, especially on large projects. This tool does the job for you.

From: [fabpot/PHP-CS-Fixer](https://github.com/fabpot/PHP-CS-Fixer)

## Install

This docker image is available as an automated build on [the docker registry hub](https://registry.hub.docker.com/u/shouldbee/php-cs-fixer/), so using it is as simple as running:


```console
$ docker run shouldbee/php-cs-fixer
```

To further ease running, it's recommended to set up a much shorter function so that you can easily execute it as just `php-cs-fixer`:

```
$ php-cs-fixer () {
  docker run -it --rm --net host -v `pwd`:/wd -w /wd shouldbee/php-cs-fixer $@
}
```

This will create a temporary function. In order to make it persist reboots, you can append this exact line to your `~/.bashrc` (or similar) like this:

```console
$ declare -f php-cs-fixer >> ~/.bashrc
```

## Usage

Usage from [fabpot/PHP-CS-Fixer](https://github.com/fabpot/PHP-CS-Fixer)


> The fix command tries to fix as much coding standards problems as possible on a given file or directory:
>
> ```
> php php-cs-fixer.phar fix /path/to/dir
> php php-cs-fixer.phar fix /path/to/file
> ```

See [official site](https://github.com/fabpot/PHP-CS-Fixer) for more information.


[PHP Coding Standards Fixer]: https://github.com/fabpot/PHP-CS-Fixer
