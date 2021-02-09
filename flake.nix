{
  inputs.bionix.url = "github:PapenfussLab/bionix";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { nixpkgs, bionix, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      with bionix.lib {
        nixpkgs = import nixpkgs { inherit system; };
        overlays = [ ./slurm.nix ./resources.nix ];
      };
      {
        defaultPackage = callBionix ./. {};
      });
}
