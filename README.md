# Fitness Tracker
Do you want to improve your fitness? Then Fitness Tracker is the perfect answer for you. With this platform, users can track and improve body fitness in no time.

## Built With

- Ruby
- Ruby on Rails
- SASS
- Webpack
- JavaScript

## Getting Started
- To get a local copy up and running follow these simple example steps.
### Prerequisites

- Ruby: 3.0.0
- Rails: 5.2.3
- Postgres

## Project setup 

- Clone this repo: `https://github.com/rukundoeric/fitness-tracker-backend.git`
- Navigate into project directory: `cd fitness-tracker-backend`
- Create file called `.env`
- Open `.env` and initialize the following environment variables:
  ```ruby
    TOKEN_SECRET=XXXXX #EX: tokenKey@2021 (this key will be used to encode and decode token)
    ADMIN_PASSWORD=XXXXXXXX #Ex: admin@2021 (make sure it is more than 8 char long. this will be used by seeds to initialize super admin). 
  ```
- Then run `bundle install` to install all gems.
- If gems are installed successfully, then run `rails db:migrate` to create all tables.
- On this project, the only way to create an admin user is by seeds: open `db/seeds.rb` file and you should see the content similar to this one:
  ```ruby
    User.create!([{
        photo: "default",
        name: "Admin", 
        role: "admin",
        email: "admin@gmail.com",
        password: ENV['ADMIN_PASSWORD']
      }])
  ```
  You can change any information you want to change like `name or email`.
- After that, initialize super admin by running seeds `rails db:seeds`.
- Finaly run `rails server` to start the server.

### Usage
  Now you can use any API development tool like [Postman](https://www.postman.com/) to test the Endpoints.

  NOTE: The server will be running on port `http://localhost:3001/` and the following is the list of all available routes.
###
#### User
| Endpoint                            | Methods   | Functionality             |
| ------------------------------------|-----------|---------------------------|
| /sign-up                            | POST      | Signup                    |
| /sign_in                            | POST      | Login                     |
| /user/:id                           | GET       | Get user info             |

#### Measurements
| Endpoint                            | Methods   | Functionality             |
| ------------------------------------|-----------|---------------------------|
| /measurements                       | GET       | Get measurements          |
| /measurements                       | POST      | Create measurements       |

#### ThingsToMeasure
| Endpoint                            | Methods   | Functionality             |
| ------------------------------------|-----------|---------------------------|
| /things_to_measure                  | GET       | Get things_to_measure     |
| /things_to_measure/:id              | GET       | Get one things_to_measure |
| /things_to_measure                  | POST      | Create thing_to_measure   |

#### Progress
| Endpoint                            | Methods   | Functionality             |
| ------------------------------------|-----------|---------------------------|
| /progress                           | GET       | Get progress report       |


### Run tests

```
    rpsec --format documentation
```

### Deployment

The Appp is Hosted On Heroku

## Authors

👤 **Rukundo Eric**

- GitHub: [@githubhandle](https://github.com/rukundoeric)
- Twitter: [@twitterhandle](https://twitter.com/rukundoeric005)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/rukundo-eric-000bba181/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- My thanks also goes to Microverse and all our peers and colleagues there.

## 📝 License

This project is [MIT](./LICENSE) licensed.
