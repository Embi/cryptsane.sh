FROM archlinux

COPY cryptsane /app/cryptsane

WORKDIR /app

RUN pacman -Syu --noconfirm \
  gnupg pcsclite ccid yubikey-manager gum cryptsetup less

ENTRYPOINT ["bash", "cryptsane"]
