
## Install

- установить PHP (для Windows http://windows.php.net/download/)

- установить Git (для Windows http://gitforwindows.org/)

- установить Composer https://getcomposer.org/download/

- добавить в composer.json проекта
```
{
    "require-dev": {
        "squizlabs/php_codesniffer": "^2",
        "wimg/php-compatibility": "*"
    },
    "prefer-stable" : true
}
```

- выполнить в Git Bash (для Windows) или в терминале (для Linux) в папке проекта
```
composer install
./vendor/bin/phpcs --config-set installed_paths ../../wimg/php-compatibility
./vendor/bin/phpcs --config-set default_standard PHPCompatibility
./vendor/bin/phpcs --config-set testVersion 5.3
```

- использовать в Git Bash (для Windows) или в терминале (для Linux) в папке проекта
```
./vendor/bin/phpcs index.php
./vendor/bin/phpcs local/test1
```

## Использование в Visual Studio Code

- установить расширение https://marketplace.visualstudio.com/items?itemName=ikappas.phpcs
