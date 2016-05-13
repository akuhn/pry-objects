# pry-objects

Evaluates expression and prints created objects.

```
$ pry
[1] pry(main)> string = 'hello hello'
[2] pry(main)> objects string.gsub('e', 'a')
=> ["hello hello", #<MatchData "e">, "hello hello", "hallo hallo", "hello hello", "e", "a", "e"]
[3] pry(main)> objects string.tr('e', 'a')
=> ["hallo hallo", "a", "e"]
```

## Installation

Install the gem globally or inside the `:development` group of your gemfile

```
gem install pry
gem install pry-objects
```

## Contributing

Bug reports and pull requests are welcome on github at https://github.com/akuhn/pry-objects

