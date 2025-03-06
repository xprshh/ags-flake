{ config, pkgs, lib, ... }:  # Ensure pkgs is included

{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs;  

    extraPackages = epkgs: lib.attrValues {
      inherit (epkgs)
        wal-mode
        nix-mode
        magit
        tramp
        notmuch
        org
        direnv
        doom;
    };

    extraConfig = ''
      ;; Set up package.el to work with MELPA
      (require 'package)
      (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
      (package-initialize)

      ;; Refresh package contents only if necessary
      (unless package-archive-contents
        (package-refresh-contents))

      ;; Install Evil if it's not already installed
      (unless (package-installed-p 'evil)
        (package-install 'evil))

      ;; Enable Evil mode
      (require 'evil)
      (evil-mode 1)

      ;; Load nix-mode
      (use-package nix-mode
        :ensure t
        :mode "\\.nix\\'")
    '';
  };
}


  # Install Ubuntu Nerd Font if necessary
  environment.systemPackages = with pkgs; [
    emacs-gtk
  ];
}
