#The "ls" command displays a list of files contained in the current directory.
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ ls
Calculadora                          da_llave_publica.asc    doc_no_cifrado.txt.sig        final_cifrado_firmado.txt.gpg
Cayetano_llave_publica.asc           doc_cifrado.txt         doc_no_cifrado_CayeC.txt      gnupg_script.sh
LICENSE                              doc_cifradoCAYE.txt     doc_no_cifrado_CayeC.txt.gpg  linux_cisco_1.sh
README.md                            doc_no_cifrado.txt      doc_no_cifrado_CayeC.txt.sig  llave_privada_clase.asc
cifrado_firmado_final_CayeC.txt.gpg  doc_no_cifrado.txt.gpg  doc_no_cifrado_firmado.txt    verificacion_Cayetano.txt
#The "ls" command plus an argument which in this case would be the Calculadora directory, its result is a list of the files included in the directory
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ ls Calculadora
app.py  suma.py
#The "ls" command adding "-l" which would be "ls -l" serves to provide more information about each of the files listed:
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ ls -l
total 116
drwxrwxrwx+ 2 codespace root       4096 Apr 30 00:46 Calculadora
-rw-rw-rw-  1 codespace root       3194 Apr 30 00:46 Cayetano_llave_publica.asc
-rw-rw-rw-  1 codespace root      34523 Apr 30 00:46 LICENSE
-rw-rw-rw-  1 codespace root         53 Apr 30 00:46 README.md
-rw-rw-rw-  1 codespace root       1217 Apr 30 00:46 cifrado_firmado_final_CayeC.txt.gpg
-rw-rw-rw-  1 codespace root       3204 Apr 30 00:46 da_llave_publica.asc
-rw-rw-rw-  1 codespace root       1146 Apr 30 00:46 doc_cifrado.txt
-rw-rw-rw-  1 codespace root        632 Apr 30 00:46 doc_cifradoCAYE.txt
-rw-rw-rw-  1 codespace root          8 Apr 30 00:46 doc_no_cifrado.txt
-rw-rw-rw-  1 codespace root        622 Apr 30 00:46 doc_no_cifrado.txt.gpg
-rw-rw-rw-  1 codespace root        566 Apr 30 00:46 doc_no_cifrado.txt.sig
-rw-rw-rw-  1 codespace root         16 Apr 30 00:46 doc_no_cifrado_CayeC.txt
-rw-rw-rw-  1 codespace root        630 Apr 30 00:46 doc_no_cifrado_CayeC.txt.gpg
-rw-rw-rw-  1 codespace root        566 Apr 30 00:46 doc_no_cifrado_CayeC.txt.sig
-rw-rw-rw-  1 codespace root        890 Apr 30 00:46 doc_no_cifrado_firmado.txt
-rw-rw-rw-  1 codespace root       1209 Apr 30 00:46 final_cifrado_firmado.txt.gpg
-rw-rw-rw-  1 codespace root       2631 Apr 30 00:46 gnupg_script.sh
-rw-rw-rw-  1 codespace codespace  1020 Apr 30 00:57 linux_cisco_1.sh
-rw-rw-rw-  1 codespace root       6825 Apr 30 00:46 llave_privada_clase.asc
-rw-rw-rw-  1 codespace root         16 Apr 30 00:46 verificacion_Cayetano.txt
#The command "ls -r" will print the results in reverse alphabetical order.
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ ls -r
verificacion_Cayetano.txt      doc_no_cifrado_firmado.txt    doc_no_cifrado.txt.gpg  cifrado_firmado_final_CayeC.txt.gpg
llave_privada_clase.asc        doc_no_cifrado_CayeC.txt.sig  doc_no_cifrado.txt      README.md
linux_cisco_1.sh               doc_no_cifrado_CayeC.txt.gpg  doc_cifradoCAYE.txt     LICENSE
gnupg_script.sh                doc_no_cifrado_CayeC.txt      doc_cifrado.txt         Cayetano_llave_publica.asc
final_cifrado_firmado.txt.gpg  doc_no_cifrado.txt.sig        da_llave_publica.asc    Calculadora
#The commands "ls -l -r", "ls -rl", "ls -lr", the result of using these commands will be the same since it will give me a long list in reverse alphabetical order
@darwinalcarraz-hash ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026-Alcarraz2.0 (linux_cisco_1) $ ls -rl
total 116
-rw-rw-rw-  1 codespace root         16 Apr 30 00:46 verificacion_Cayetano.txt
-rw-rw-rw-  1 codespace root       6825 Apr 30 00:46 llave_privada_clase.asc
-rw-rw-rw-  1 codespace codespace  3441 Apr 30 01:03 linux_cisco_1.sh
-rw-rw-rw-  1 codespace root       2631 Apr 30 00:46 gnupg_script.sh
-rw-rw-rw-  1 codespace root       1209 Apr 30 00:46 final_cifrado_firmado.txt.gpg
-rw-rw-rw-  1 codespace root        890 Apr 30 00:46 doc_no_cifrado_firmado.txt
-rw-rw-rw-  1 codespace root        566 Apr 30 00:46 doc_no_cifrado_CayeC.txt.sig
-rw-rw-rw-  1 codespace root        630 Apr 30 00:46 doc_no_cifrado_CayeC.txt.gpg
-rw-rw-rw-  1 codespace root         16 Apr 30 00:46 doc_no_cifrado_CayeC.txt
-rw-rw-rw-  1 codespace root        566 Apr 30 00:46 doc_no_cifrado.txt.sig
-rw-rw-rw-  1 codespace root        622 Apr 30 00:46 doc_no_cifrado.txt.gpg
-rw-rw-rw-  1 codespace root          8 Apr 30 00:46 doc_no_cifrado.txt
-rw-rw-rw-  1 codespace root        632 Apr 30 00:46 doc_cifradoCAYE.txt
-rw-rw-rw-  1 codespace root       1146 Apr 30 00:46 doc_cifrado.txt
-rw-rw-rw-  1 codespace root       3204 Apr 30 00:46 da_llave_publica.asc
-rw-rw-rw-  1 codespace root       1217 Apr 30 00:46 cifrado_firmado_final_CayeC.txt.gpg
-rw-rw-rw-  1 codespace root         53 Apr 30 00:46 README.md
-rw-rw-rw-  1 codespace root      34523 Apr 30 00:46 LICENSE
-rw-rw-rw-  1 codespace root       3194 Apr 30 00:46 Cayetano_llave_publica.asc
drwxrwxrwx+ 2 codespace root       4096 Apr 30 00:46 Calculadora
#The pwd command prints the working directory, its current location within the file system:
pwd
