{
  description = "Nonogram maker";

  outputs = { self, nixpkgs }: let
    pkgs = import nixpkgs { system = "x86_64-linux"; };
  in {
    defaultPackage.x86_64-linux = (import ./. { inherit pkgs; }).package;
  };
}
