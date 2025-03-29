{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    xorg.libX11
    xorg.libXft
    pkg-config
    gnupatch
    harfbuzz
  ];
  shellHook = ''
    # exported variables maybe...

    # patch -p1 < patches/boxdraw.diff
    # patch -p1 < patches/ligatures.diff
  '';
}
