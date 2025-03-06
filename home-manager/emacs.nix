{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs;

    extraPackages = epkgs: lib.attrValues {
      inherit (epkgs)
        nix-mode
        magit
        tramp
        notmuch
        org
        direnv
        doom;
    };

    extraConfig = ''
      ;; Set up package.el to work with MELPA, GNU, and NonGNU
      (require 'package)
      (setq package-archives '(("melpa" . "https://melpa.org/packages/")
                               ("gnu" . "https://elpa.gnu.org/packages/")
                               ("nongnu" . "https://elpa.nongnu.org/nongnu/")))
      (package-initialize)

      ;; Refresh package contents only if necessary
      (unless package-archive-contents
        (package-refresh-contents))

      ;; Install use-package if not already installed
      (unless (package-installed-p 'use-package)
        (package-install 'use-package))

      (require 'use-package)
      (setq use-package-always-ensure t)

      ;; Install and enable Evil mode
      (use-package evil
        :config
        (evil-mode 1))
    '';
  };
}
