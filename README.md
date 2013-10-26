# Maven completion

Bash completion for Maven.

* `mvn ca<tab> # => mvn cargo:run`
* `mvn cl<tab> # => mvn clean`
* `mvn co<tab> # => mvn compile`
* `mvn e<tab> # => mvn exec:java`
* `mvn i<tab> # => mvn install`

Tabbing twice with either no arguments or multiple matches will return a list
of all available commands for completion.
```bash
mvn c<tab><tab>
# cargo:run clean compile
```

## Requirements
* Maven
* Bash
* Bash completion v1.3+ (running 1.1+ should work, but I haven't tested it)

## Installation
### Mac OS X
```bash
brew tap ipwnstuff/formulae
brew install mvn-completion

# Then add the script into your .bashrc
if [ -f `brew --prefix`/etc/bash_completion.d/mvn-completion.bash ]; then
    source `brew --prefix`/etc/bash_completion.d/mvn-completion.bash
fi
```

### Other
```bash
wget https://raw.github.com/ipwnstuff/mvn-completion/master/mvn-completion.bash -P ~
echo "source ~/mvn-completion.bash" >> ~/.bashrc`
```
