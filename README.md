confirm
=======

Prompt for confirmation

Almost all we expect users to input is `[Y/n]`, don't we?

Do we have to `read -r -p blah blah` for that reason all the time? No way.

`confirm` puts quick yes-no prompt for you.

## Usage

```sh
$ confirm && echo 'yes' || echo 'no'
Are you sure? [y/N] n
no

$ confirm -y && echo 'yes' || echo 'no'
Are you sure? [Y/n] y
yes

$ confirm 'Is it OK?' && echo 'yes' || echo 'no'
Is it OK? [y/N] y
yes
```

## Setup

```
$ git clone git@github.com:ernix/confirm.git
$ cd confirm
$ sudo make install
```

## Uninstall

```
$ sudo make uninstall
```
