# nx-yaml
> Nx yaml tools.

## installation
```rb
# from gem
gem 'nx-yaml'
# from git
gem 'nx-yaml', git: 'git@github.com:afeiship/nx-yaml.git'
```

## usage
```rb
Nx::Yaml.load('./template.yml', { name: 'my-template', description: 'Awesome template'})
```

## template.yml
```yml
name: <%= name %>
description: <%= description %>
version: 1.0.0
```

<!-- After load -->
```yml
name: my-template
description: Awesome template
version: 1.0.0
```

## build/publish
```shell
# build
gem build nx-yaml.gemspec

# publish
gem push nx-yaml-0.1.0.gem
```

## rspec
- https://rspec.info/
