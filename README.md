# APPS rdev.my

- [Application Environment](#application-environment)
- [Setting up development environment](#setting-up-development-environment)
- [Using Docker for development](#using-docker-for-development)

## Application Environment

- `Ruby 2.5.3`
- `Rails 5.2.1`
- `Webpack 3.5.5`
- Test Coverage
  - `Rspec` - [#72](https://code.in.spdigital.io/sp-digital/rails-base/pull/72)

## Setting up development environment

1. **Clone repository**. Clone project
    ```bash
    git clone https://github.com/amirolahmad/apps-rdev.git
    cd my-project-name
    ```
2. **Install Ruby dependencies**. run bundle install.
    ```bash
    bundle install
    gem install foreman
    ```
3. **Install JavaScript dependencies**. Webpack is needed in this app
    ```bash
    yarn install
    ```
4. **Set Up Database**
    ```bash
    rake db:setup
    ```
5. **Start the application**. Start this rails app
    ```bash
    foreman start -f Procfile.dev -p 3000
    ```

## Using Docker for development

Another option for building applications via docker. To use it:

1. Make sure you have [Docker for Mac](https://docs.docker.com/docker-for-mac/install/) or [Docker for Windows](https://docs.docker.com/docker-for-windows/install/) installed.

2. Run this command in your application root folder:

    ```bash
    docker-compose up
    ```
    This will run the rails server on port 3000 with postgres running on port 5432. Any changes to the source code will
    get reflected in the containers that are running.

3. To stop the services:

    ```bash
    docker-compose down
    ```
    This will remove all created containers. To remove the database data, you can use `docker-compose down -v` to remove
    the mounted volume.

4. Rebuild the docker

    ```bash
    docker-compose build
    ```
    This will rebuild all the dependencies installed in this created containers.
