# Private Events

> An application that allows users to create and view upcoming and past events.

## Functionality

- User Authentication
 - Create user account
 - Log in
 - Sign out
- Event Management
 - Create event
 - View a specific event
 - View a list of all upcoming and past events
 - View a list of created and RSVPed events

## :toolbox: Tools & Technologies Used

### Built with

- HTML5
- CSS3
- Ruby v2.6.5
- Ruby on Rails v5.2.4.3

### Tested with

- RSpec Rails v4.0.1
- Capybara v2.15
- Factory Bot Rails v6.1
- Shoulda Matchers v4.3
- Faker v2.13

## :rocket: Getting Started

### Configuration

1. [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)
2. Install Ruby on Rails
```
gem install rails -v 5.2.3
```
3. [Install SQLite3](https://www.sqlite.org/download.html), if you don't already have it installed locally.
4. Clone repo into your local environment using your favourite terminal:
- Clone with SSH
```
git clone git@github.com:cliftondavies/Private-Events.git
```
- Clone with HTTPS
```
git clone https://github.com/cliftondavies/Private-Events.git
```
5. Open project directory
```
cd [directory-name]
```
6. Bulk install dependencies
```
bundle install
```
7. Set up database
```
rails db:create
```
```
rake db:migrate
```
8. Run Locally
- In Rails console
```
rails c
```
```
Hirb.enable
```
- In Browser
```
rails s
```
then visit http://localhost:3000/
- Tests
```
rspec
```

## Author

👤 **Clifton Davies**

- Github: [@githubhandle](https://github.com/cliftondavies)
- Twitter: [@twitterhandle](https://twitter.com/cliftonaedavies)
- Linkedin: [linkedin](https://www.linkedin.com/in/clifton-davies-mbcs/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Sitepoint](https://www.sitepoint.com/learn-the-first-best-practices-for-rails-and-rspec/)
- [Sephamore](https://semaphoreci.com/community/tutorials/how-to-test-rails-models-with-rspec)
- [Code with Jason](https://www.codewithjason.com/rails-testing-hello-world-using-rspec-capybara/)
- [Martin Njoroge](https://hackernoon.com/testing-on-ruby-on-rails-a-how-to-guide-ox2u3y3i)
- [Zinovyev](https://github.com/zinovyev/rails-rspec-tutorial)
- [Michael Crismali](https://madeintandem.com/blog/setting-up-rspec-and-capybara-in-rails-5-for-testing/)
- [Isa Levine](https://dev.to/isalevine/intro-to-rspec-in-rails-basic-syntax-and-strategy-for-testing-3hh6)
- [Carlos Anriquez](https://github.com/canriquez)

## 📝 Copyright & License

Copyright (c) 2020 Clifton Davies.
This project is licensed under [MIT](https://opensource.org/licenses/MIT). See LICENSE file for details.
