ghcup set ghc 9.4.5

sudo dnf install ghc-OpenGLRaw ghc-OpenGLRaw-devel
sudo dnf install ghc-GLURaw ghc-GLURaw-devel

cabal install --lib base
cabal install --lib UISF

cd ~/deps
git clone https://github.com/Euterpea/Euterpea2.git
cd Euterpea2; cabal v1-install --allow-newer

cd ~/deps
git clone https://github.com/Euterpea/HSoM.git
cd HSoM; cabal v1-install --allow-newer
