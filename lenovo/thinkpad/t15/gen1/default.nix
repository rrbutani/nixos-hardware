{ config, lib, ... }:

{
  imports = [
    ../..
    ../../../../common/pc/ssd
    ../../../../common/cpu/intel
  ];

  # Fingerprint reader "Synaptics, Inc. Prometheus MIS Touch" is supported.
  services.fprintd.enable = lib.mkDefault true;

  # For touchpad click support:
  #
  # See: https://superuser.com/questions/1649041/thinkpad-t15-clickpad-button-not-working-in-linux
  boot.kernelParams = [
    "psmouse.synaptics_intertouch=0"
  ];
}
