# rails-todo

This is a demo project used in [this](https://engineering.freeagent.com/2023/08/29/testing-with-factories/) post to show the use of `factory_bot` for testing a rails application.

## Run the project

1. Clone the repo:
    
    ```
    git clone https://github.com/bfrangi/rails-todo.git
    ```

2. Run bundler:

    ```
    cd rails-todo
    bundle install
    ```

4. Run migrations:

    ```
    ./bin/rails db:migrate
    ```

4. Run the server:

    ```
    ./bin/rails server
    ```
    
5. Open a browser at http://127.0.0.1:3000/

6. Check out the [walk-through post](https://engineering.freeagent.com/2023/08/29/testing-with-factories/) on [Grinding Gears](https://engineering.freeagent.com/) explaining the why and the how of this project!
