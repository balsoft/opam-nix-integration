{ buildDunePackage
, opam-format
, opam-state
, ppxlib
, ppx_deriving
, cmdliner
, zarith
, pkgs
}:

buildDunePackage {
  pname = "opam2nix";
  version = "0.0.0";

  useDune2 = true;
  minimumOCamlVersion = "4.13";

  src = ../../..;

  buildInputs = [
    opam-format
    opam-state
    ppxlib
    ppx_deriving
    cmdliner
    zarith
    pkgs.git
  ];
}
