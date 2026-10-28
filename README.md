# nix-devshells

[![ci](https://github.com/Urthella/nix-devshells/actions/workflows/ci.yml/badge.svg)](https://github.com/Urthella/nix-devshells/actions/workflows/ci.yml)

Reproducible dev shells as Nix flake templates. One command drops a `flake.nix` and an `.envrc` into a repo, and `direnv` (or `nix develop`) gives everyone the same toolchain on Linux, macOS and WSL. No more "works on my machine" version drift.

## Use

```bash
nix flake init -t github:Urthella/nix-devshells#rust
direnv allow        # or: nix develop
```

| Template | Tools |
|---|---|
| `rust` | cargo, rustc, clippy, rustfmt, rust-analyzer |
| `go` | go, gopls, golangci-lint |

List them with `nix flake show github:Urthella/nix-devshells`.

## How it's tested

CI initializes every template into an empty directory, enters its shell and runs each tool's `--version`. A template that fails to evaluate or build can't reach `main`.

## Windows

Nix runs inside WSL. Install it there, then use the templates exactly as above.

## License

[MIT](LICENSE)
