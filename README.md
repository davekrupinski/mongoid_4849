# Steps to Reproduce

## Working Example

```
bundle exec rails c
> thing = Thing.find_or_create_by(name: 'One')
> GoodStuff.new(thing: thing).name
> "One"
```

## Erroring Example
```
bundle exec rails c
> thing = Thing.find_or_create_by(name: 'Two')
> BadStuff.new(thing: thing).name
```

This will generate an error:

```
Traceback (most recent call last):
        3: from (irb):4
        2: from app/models/bad_stuff.rb:3:in `<main>'
        1: from app/models/bad_stuff.rb:6:in `<class:BadStuff>'
ArgumentError (wrong number of arguments (given 2, expected 1))
```

Any subsequent call to `BadStuff.new(thing: thing).name` will now result in:

```
Traceback (most recent call last):
        2: from (irb):7
        1: from (irb):7:in `rescue in irb_binding'
NoMethodError (undefined method `name' for #<BadStuff:0x00007fea0d0c6d28>)
```
