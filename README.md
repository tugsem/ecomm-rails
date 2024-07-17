# Ecomm Rails

> A full stack RoR website with admin panel(dashboard with daily stats, revenue chart, recent orders, and product, category and orders pages), cart page with stripe checkout. A price filter for a category.

![Screenshot 2024-03-11 155503](https://github.com/tugsem/ecomm-rails/assets/91486791/d56d93e3-4f22-4a88-b211-8c3c7e4bbad7)

## Built With

- Ruby on Rails
- Stripe for checkout
- Tailwind for styling
- PostgreSQL for database

## Live Link
[Live](https://ecomm-rails-production.up.railway.app/)
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- ruby
- code editor
- git
- postgres shell or client(I've used PGAdmin)

### Setup

Clone the repository locally using one of the three options available:
- web Url
- github desktop
- download ZIP

### Install

- bundle install

### Usage

- rails db:setup
- rails db: migrate
- rails start

### Run tests
- rspec spec

### Deployment

Deployed with Render.


## Future Features

- Add notificator for item added to the cart.
- Add counter to the cart icon to show the number of items in the cart.

## Authors

👤 **Tuğsem Saranlı**

- GitHub: [@githubhandle](https://github.com/tugsem)
- Twitter: [@twitterhandle](https://twitter.com/tugsemSaranli)
- LinkedIn: [LinkedIn](https://linkedin.com/in/tugsem)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Special thanks to Connor Jensen whose tutorial was very helpful to me to understand stimulus and stripe better.


## 📝 License

This project is [MIT](./MIT.md) licensed.
