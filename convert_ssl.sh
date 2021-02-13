rm certs/*

openssl x509 -in ssl_all/SSLcertificate.crt -out certs/SSLcertificate.pem
openssl x509 -in ssl_all/SSLIntermediateCertificate.crt -out certs/SSLIntermediateCertificate.pem

cat certs/SSLcertificate.pem certs/SSLIntermediateCertificate.pem > certs/fullchain.pem
cp ssl_all/SSLprivatekey.key certs/SSLprivatekey.key

# Jenkins test
