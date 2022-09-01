<h1 align="center">
  ⬡ + 🚀
  <br>Spaceship Gradle<br>
</h1>

<h4 align="center">
  <a href="https://gradle.org" target="_blank">Gradle</a> section for Spaceship prompt
</h4>

<p align="center">
  <a href="https://github.com/spaceship-prompt/spaceship-gradle/releases">
    <img src="https://img.shields.io/github/v/release/spaceship-prompt/spaceship-gradle.svg?style=flat-square"
      alt="GitHub Release" />
  </a>

  <a href="https://github.com/spaceship-prompt/spaceship-gradle/actions">
    <img src="https://img.shields.io/github/workflow/status/spaceship-prompt/spaceship-gradle/ci?style=flat-square"
      alt="GitHub Workflow Status" />
  </a>

  <a href="https://twitter.com/SpaceshipPrompt">
    <img src="https://img.shields.io/badge/twitter-%40SpaceshipPrompt-00ACEE.svg?style=flat-square"
      alt="Spaceship Twitter" />
  </a>

  <a href="https://discord.gg/NTQWz8Dyt9">
    <img
      src="https://img.shields.io/discord/859409950999707668?label=discord&logoColor=white&style=flat-square"
      alt="Chat on Discord"
    />
  </a>
</p>

Current Gradle version, through `gradle` or `gradlew` (`⬡`).

## Installing

You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [Oh-My-Zsh]

Execute this command to clone this repo into Oh-My-Zsh plugin's folder:

```zsh
git clone https://github.com/spaceship-prompt/spaceship-gradle.git $ZSH_CUSTOM/plugins/spaceship-gradle
```

Include `spaceship-gradle` in Oh-My-Zsh plugins list:

```zsh
plugins=($plugins spaceship-gradle)
```

### [zplug]

```zsh
zplug "spaceship-prompt/spaceship-gradle"
```

### [antigen]

```zsh
antigen bundle "spaceship-prompt/spaceship-gradle"
```

### [antibody]

```zsh
antibody bundle "spaceship-prompt/spaceship-gradle"
```

### [zinit]

```zsh
zinit light "spaceship-prompt/spaceship-gradle"
```

### [zgen]

```zsh
zgen load "spaceship-prompt/spaceship-gradle"
```

### [sheldon]

```toml
[plugins.spaceship-gradle]
github = "spaceship-prompt/spaceship-gradle"
```

### Manual

If none of the above methods works for you, you can install Spaceship manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-gradle`.
2. Source this section in your `~/.zshrc`.

### Example

```zsh
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/spaceship-prompt/spaceship-gradle.git "$HOME/.zsh/spaceship-gradle"
```

For initializing prompt system add this to your `.zshrc`:

```zsh title=".zshrc"
source "~/.zsh/spaceship-gradle/spaceship-gradle.plugin.zsh"
```

## Usage

After installing, add the following line to your `.zshrc` in order to include Ember section in the prompt:

```zsh
spaceship add gradle
```

## Options

Shows current Gradle version using `gradle` or `gradlew` only within folder containing `settings.gradle` and `settings.gradle.kts` files.

| Variable                               |              Default               | Meaning                                         |
| :------------------------------------- | :--------------------------------: | ----------------------------------------------- |
| `SPACESHIP_GRADLE_SHOW`                |               `true`               | Current Gradle section                          |
| `SPACESHIP_GRADLE_PREFIX`              | `$SPACESHIP_PROMPT_DEFAULT_PREFIX` | Prefix before Gradle section                    |
| `SPACESHIP_GRADLE_SUFFIX`              | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Suffix after Gradle section                     |
| `SPACESHIP_GRADLE_SYMBOL`              |                `⬡·`                | Character to be shown before Gradle section     |
| `SPACESHIP_GRADLE_DEFAULT_VERSION`     |                ` `                 | Gradle version to be treated as default         |
| `SPACESHIP_GRADLE_COLOR`               |              `green`               | Color of Gradle section                         |

## License

MIT © [Denys Dovhan](http://yourwebsite.com) and Sergey Shatunov

<!-- References -->

[Oh-My-Zsh]: https://ohmyz.sh/
[zplug]: https://github.com/zplug/zplug
[antigen]: https://antigen.sharats.me/
[antibody]: https://getantibody.github.io/
[zinit]: https://github.com/zdharma/zinit
[zgen]: https://github.com/tarjoilija/zgen
[sheldon]: https://sheldon.cli.rs/
