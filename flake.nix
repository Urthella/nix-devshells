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
    };
  };
}
