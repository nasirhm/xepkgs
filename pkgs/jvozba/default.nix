{ pkgs ? import <nixpkgs> { } }:
let
  version = "0.1.1";

  repo = pkgs.fetchFromGitHub {
    owner = "Xe";
    repo = "jvozba";
    rev = "v${version}";
    sha256 = "07zra87h0lgi4r3hsh8q08pzrxdnvlfa1zm8yj0vv4iysrk3y3x2";
  };

  out = pkgs.buildGoModule {
    pname = "jvozba";
    version = version;
    src = repo;
    modSha256 = "0sjjj9z1dhilhpc8pq4154czrb79z9cm044jvn75kxcjv6v5l2m5";
    vendorSha256 = "1s3yj3b5zs9cqss2p2qdsk5yxmwna53nnk62zf78j6whan2kqag3";

    subPackages = [ "cmd/..." ];
  };

in out
