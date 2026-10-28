{
  description = "Nix flake templates for reproducible dev shells";

  outputs = { self }: {
    templates = {
      rust = {
        path = ./templates/rust;
        description = "Rust: cargo, rustc, clippy, rustfmt, rust-analyzer";
      };
      go = {
        path = ./templates/go;
        description = "Go: go, gopls, golangci-lint";
      };
      node = {
        path = ./templates/node;
        description = "TypeScript / Node.js: node 24, pnpm, tsc, typescript-language-server";
      };
      python = {
        path = ./templates/python;
        description = "Python: python3, uv, ruff";
      };
      solidity = {
        path = ./templates/solidity;
        description = "Solidity: foundry (forge, cast, anvil), solc";
      };
    };
  };
}
