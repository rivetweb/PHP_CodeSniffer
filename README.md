
# Настройка PHP_CodeSniffer для проверки на совместимость c PHP 5.3

Использовать версию не выше 3 - https://github.com/squizlabs/PHP_CodeSniffer/releases/tag/2.9.1

> The sniffs can now only be run on PHP 5.3 or higher in combination with PHPCS 1.5.6 or 2.x

## Install

- установить PHP (для Windows http://windows.php.net/download/)

- установить Git (для Windows http://gitforwindows.org/)

- выполнить в Git Bash (для Windows) или в терминале (для Linux)

```
mkdir ~/bin
cd ~/bin
curl -OL https://github.com/squizlabs/PHP_CodeSniffer/releases/download/2.9.1/phpcs.phar
mv phpcs.phar phpcs
curl -OL https://github.com/wimg/PHPCompatibility/archive/8.1.0.zip
unzip 8.1.0.zip
rm 8.1.0.zip
rm -R PHPCompatibility
mv PHPCompatibility-8.1.0 PHPCompatibility
phpcs --config-set installed_paths ~/bin/PHPCompatibility
```

- использовать в Git Bash (для Windows) или в терминале (для Linux)
```
phpcs --standard=PHPCompatibility --runtime-set testVersion 5.3 index.php
phpcs --standard=PHPCompatibility --runtime-set testVersion 5.3 local/test1
```

## Использование в Visual Studio Code

- установить расширение https://marketplace.visualstudio.com/items?itemName=ikappas.phpcs

- выполнить в Git Bash (для Windows) или в терминале (для Linux)
```
phpcs --config-set default_standard PHPCompatibility
phpcs --config-set testVersion 5.3
```
