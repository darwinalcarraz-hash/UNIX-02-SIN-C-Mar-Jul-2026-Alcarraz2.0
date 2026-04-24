56  git remote add profe https://github.com/jonathanetitoo/UNIX-02-SIN-C-Mar-Jul-2026.git
   57  git fetch profe eval_p2_1_g1
   58  git reset --hard profe/eval_p2_1_g1
   59  ls
   60  cd evaluation/orion
   61  mv notas apuntes
   62  mkdir respaldos
   63  git add .
   64  git commit -m "Fix issue 1: corrected structure"
   65  mv telemetria.log apuntes/
   66  mv config.tmp config.conf
   67  git add .
   68  git commit -m "Fix problem 2: files moved"
   69  chmod 640 apuntes/telemetria.log
   70  ls -l apuntes/telemetria.log
   71  git add apuntes/telemetria.log
   72  git commit -m "Fix problem 3: numeric permissions 640 in telemetria.log"
   73  chmod 640 apuntes/telemetria.log
   74  git add -A
   75  git commit -m "Fix problem 3: numeric permissions 640 in telemetria.log"
   76  ls -l apuntes/telemetria.log
   77  chmod u+x script.sh
   78  chmod o-w config.conf
   79  ls -l script.sh
   80  ls -l config.conf
   81  chmod u+x script.sh
   82  chmod o-w config.conf
   83  ls -l script.sh
   84  ls -l config.conf
   85  git commit --allow-empty -m "Fix problem 4: symbolic permissions corrected"
   86  chmod u+s script.sh
   87  ls -l script.sh
   88  git add script.sh
   89  git commit -m "Fix issue 5: SUID enabled in script.sh"
   90  sudo chmod +t /tmp/orion_zone
   91  sudo mkdir -p /tmp/orion_zone
   92  sudo chmod +t /tmp/orion_zone
   93  ls -ld /tmp/orion_zone
   94  git commit --allow-empty -m "Fix issue 6: sticky bit in /tmp/orion_zone"
   95  cat > /tmp/llave.batch <<'EOF'
%no-protection
Key-Type: RSA
Key-Length: 2048
Name-Real: lyra
Name-Email: lyra@orion.lab
Expire-Date: 0
%commit
EOF

   96  gpg --batch --generate-key /tmp/llave.batch
   97  gpg --encrypt --recipient lyra@orion.lab apuntes/telemetria.log
   98  gpg --list-keys lyra@orion.lab
   99  ls -l apuntes/telemetria.log.gpg
  100  gpg --list-packets apuntes/telemetria.log.gpg
  101  git add .
  102  git commit -m "Fix issue 7: GPG key generated and telemetry.log encrypted"
  103  gpg --clearsign config.conf
  104  gpg --detach-sign --output script.sh.sig script.sh
  105  cat config.conf.asc
  106  gpg --verify script.sh.sig script.sh
  107  git add .
  108  git commit -m "Fix issue 8: GPG signatures corrected and created"
  109  git push origin eval_p2_1_g1 --force
  110  history