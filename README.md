tond
====

# For developer
## Setup
### QT
This application uses capybara-webkit, so you need qt to run spec.
```
brew install qt
```

### Rails setup
```
bundle
rake db:migrate
```

## Test
you can use spork
```
spork
```
you can run all specs like below
```
rake
```

## CI
https://travis-ci.org/adorechic/tond
