{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    xorg.libX11
    xorg.libXft
    pkg-config
    # packages here
  ];
  shellHook = ''
    # exported variables maybe...
  '';
}
