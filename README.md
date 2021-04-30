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
name: nx-yml
version: 0.1.0
env: 
  home: <%= ENV["HOME"] %>
host: <%= host %>
```

<!-- After load -->
```rb
{
  name: "nx-yml",
  version: "0.1.0",
  env: {
    home: "/Users/aric.zheng",
  },
  host: "0.0.0.0",
}
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
