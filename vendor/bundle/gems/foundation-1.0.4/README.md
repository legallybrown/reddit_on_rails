# Foundation::Cli

**NOTE:** This is considered alpha, things may change without notice.

A CLI for creating and updating Foundation projects.

## Installation

```bash
git clone git@github.com:mhayes/foundation-cli.git
bundle install
bundle exec rake install
```

## Usage

### Create a new project

```bash
foundation new my_awesome_project --version 4.3.2
```

### Update a project
```
cd ~/Sites/my_awesome_app
foundation update --version 4.3.2
```

### Compile assets

```bash
cd ~/Sites/my_awesome_app
foundation watch
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
