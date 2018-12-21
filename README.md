# Slim Framework 3 Skeleton Application

Use this skeleton application to quickly setup and start working on a new Slim Framework 3 application. This application uses the latest Slim 3 with the PHP-View template renderer. It also uses the Monolog logger.

This skeleton application was built for Composer. This makes setting up a new Slim Framework application quick and easy.

## Install the Application

Run this command from the directory in which you want to install your new Slim Framework application.

    php composer.phar create-project slim/slim-skeleton slim-api
	composer create-project slim/slim-skeleton slim-api -vvv (For windows)

Replace `slim-api` with the desired directory name for your new application. You'll want to:

* Point your virtual host document root to your new application's `public/` directory.
* Ensure `logs/` is web writeable.

To run the application in development, you can run these commands 

	cd slim-api
	php composer.phar start

Run this command in the application directory to run the test suite

	php composer.phar test

	
Database and Postman

	Postman json (Slim Framework Testing.postman_collection.json) file imported into this.
	Database file (slimframework3.sql) file placed on root directory.
	


