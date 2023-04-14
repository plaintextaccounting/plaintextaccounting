{
  description = "Website for all things related plain text accounting";
  nixConfig.bash-prompt = "plaintextaccounting.org$ ";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
    let pkgs = nixpkgs.legacyPackages.${system}; in {
      packages = rec {
        default = pkgs.stdenvNoCC.mkDerivation {
          pname = "plaintextaccounting.org";
          version = "master-${self.shortRev or "dirty"}";
          src = self;
          nativeBuildInputs = with pkgs; [pandoc];
          installPhase = ''
            runHook preInstall
            mkdir -p $out/quickref
            cp -R index.html css images $out
            cp quickref/*.html $out/quickref
            runHook postInstall
            '';
        };
      };
  });
}
