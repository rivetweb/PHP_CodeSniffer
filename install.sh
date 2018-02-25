
composer install

vendor/bin/phpcs --config-set installed_paths ../../wimg/php-compatibility
vendor/bin/phpcs --config-set default_standard PHPCompatibility
vendor/bin/phpcs --config-set testVersion 5.3
