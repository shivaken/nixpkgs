{ cabal, attoparsec, httpTypes }:

cabal.mkDerivation (self: {
  pname = "http-attoparsec";
  version = "0.1.1";
  sha256 = "12l892fix11mrvm10awwvv31y59q5rb6gb0sqjp6l4p4ym9ngqa3";
  buildDepends = [ attoparsec httpTypes ];
  meta = {
    homepage = "https://github.com/tlaitinen/http-attoparsec";
    description = "Attoparsec parsers for http-types";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
