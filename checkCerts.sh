# Check Self Signed Certs
cd /etc/pki/ca-trust/source/anchors/
cat domain.crt | openssl x509 -noout -text
openssl verify /etc/pki/ca-trust/source/anchors/domain.crt
openssl s_client -showcerts -servername registry.redhat.io -connect registry.redhat.io:443

