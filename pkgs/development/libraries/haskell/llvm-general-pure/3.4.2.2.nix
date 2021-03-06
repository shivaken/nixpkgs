{ cabal, HUnit, mtl, parsec, QuickCheck, setenv, testFramework
, testFrameworkHunit, testFrameworkQuickcheck2, transformers
}:

cabal.mkDerivation (self: {
  pname = "llvm-general-pure";
  version = "3.4.2.2";
  sha256 = "0grbw0lamp0w4jzxg97jccl3jqdgqfgldpb4llvhr1l70591b0s8";
  buildDepends = [ mtl parsec setenv transformers ];
  testDepends = [
    HUnit mtl QuickCheck testFramework testFrameworkHunit
    testFrameworkQuickcheck2
  ];
  doCheck = false;
  meta = {
    description = "Pure Haskell LLVM functionality (no FFI)";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
