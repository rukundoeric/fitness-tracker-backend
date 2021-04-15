# Fitness Tracker
Do you want to improve your fitness? Then Fitness Tracker is the perfect answer for you. With this platform, users can track and improve body fitness in no time.

## Routes

### User
| Endpoint                            | Methods   | Functionality             |
| ------------------------------------|-----------|---------------------------|
| /sign-up                            | POST      | Signup                    |
| /sign_in                            | POST      | Login                     |
| /user/:id                           | GET       | Get user info             |

### Measurements
| Endpoint                            | Methods   | Functionality             |
| ------------------------------------|-----------|---------------------------|
| /measurements                       | GET       | Get measurements          |
| /measurements                       | POST      | Create measurements       |

### ThingsToMeasure
| Endpoint                            | Methods   | Functionality             |
| ------------------------------------|-----------|---------------------------|
| /things_to_measure                  | GET       | Get things_to_measure     |
| /things_to_measure/:id              | GET       | Get one things_to_measure |
| /things_to_measure                  | POST      | Create thing_to_measure   |

### Progress
| Endpoint                            | Methods   | Functionality             |
| ------------------------------------|-----------|---------------------------|
| /progress                           | GET       | Get progress report       |

## Built With

- Ruby
- Ruby on Rails
- SASS
- Webpack
- JavaScript

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3
Postgres: >=9.5

### Setup

Install gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
   rails db:seed
```


### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

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
