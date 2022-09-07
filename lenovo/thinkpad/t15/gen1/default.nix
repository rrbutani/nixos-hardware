{ config, lib, ... }:

{
  imports = [
    ../..
    ../../../../common/pc/laptop/ssd
    ../../../../common/cpu/intel
  ];

  # Fingerprint reader xxx is supported. (TODO)
  services.fprintd.enable = lib.mkDefault true;

  # For touchpad click support:
  #
  # See: https://superuser.com/questions/1649041/thinkpad-t15-clickpad-button-not-working-in-linux
  boot.kernelParams = [
    "psmouse.synaptics_intertouch=0"
  ];
}
