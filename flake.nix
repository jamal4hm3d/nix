{
    description = "Jamal's flake";

    inputs = {
    	nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        auto-cpufreq = {
            url = "github:AdnanHodzic/auto-cpufreq";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, auto-cpufreq, ... }@inputs :
        let
	    lib = nixpkgs.lib;
	in {
	nixosConfigurations = {
            nixos = lib.nixosSystem {
		system = "x86_64-linux";
		modules = [
		    ./configuration.nix
		    auto-cpufreq.nixosModules.default
		];
	    };
	};
    };
}
