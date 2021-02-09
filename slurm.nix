self: super:
with super; {
  exec = f:
    def (slurm-exec f) {
      srun = "/usr/bin/srun ${./bin/nix-user-chroot} /vast/bedo.j/nix";
      ppn = 24;
      mem = 7;
      walltime = "3:00:00";
    };
}
