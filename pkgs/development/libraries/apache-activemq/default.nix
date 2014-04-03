{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  name = "apache-activemq-${version}";
  version = "5.9.0";

  src = fetchurl {
    url = "mirror://apache/activemq/apache-activemq/${version}/${name}-bin.tar.gz";
    sha256 = "1dwyr8nrsbv67n7rklpkmlaj6li0wjzk2zx3d4bimc42crl9158b";
  };

  phases = [ "unpackPhase" "installPhase" ];

  installPhase = ''
    ensureDir $out
    mv * $out/
    for j in `find $out/lib -name "*.jar"`; do
      cp="''${cp:+"$cp:"}$j";
    done
    echo "CLASSPATH=$cp" > $out/lib/classpath.env
  '';

  meta = {
    homepage = http://activemq.apache.org/;
    description = "Messaging and Integration Patterns server written in Java";
    license = stdenv.lib.licenses.asl20;
  };

}
