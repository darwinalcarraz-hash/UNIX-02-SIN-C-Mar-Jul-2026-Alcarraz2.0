#Este comando genera la llave GPG
gpg --full-generate-key
#Este comando hace exportar mi llave publica
gpg -armor --export darwinalcarraz@gmail.com > da_llave_publica.asc
#Este comando en lista la clave 
gpg --list-keys
#Este comando en lista la clave privada
gpg --list-secret-keys --keyid-format=long
#importar llave de compañero
gpg --import Cayetano_llave_publica.asc
#este comando sirve para 
echo "Hola123">doc_no_cifrado.txt
#Este comando sirve para ver el documento
cat doc_no_cifrado.txt
#Este comando cifra el documento de mi compañero con el hash de mi compañero
gpg --output doc_cifrado.txt --encrypt --recipient 59CBEBC4971494AD3CD503C6D83BBF4AAE393973 doc_cifrado.txt
#Este comando me deja ver lo que hay en el documento cifrado
cat doc_cifrado.txt
#descargar el archivo cifrado de mi compañero y llevarlo al codespace y luego poner este comando para poder decifrar el documento de mi compañero Cayetano.
gpg --decrypt doc_cifradoCaye.txt
#comando para firmar un documento
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt
# Se importó la llave de la clase(llave_privada_clase.asc)para solucionar el error de firma en los commits 
# y porque el archivo de Cayetano se cifró con esa identidad; sin esa llave 
# privada específica, el documento no abría en esta cuenta nueva.