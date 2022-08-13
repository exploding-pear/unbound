echo "creating the cryptographic keys necessary for the control option"
./unbound-control-setup
echo "creating trust anchor file"
./unbound-anchor
echo "checking that unbound config is valid"
./unbound-checkconf
echo "starting unbound"
./unbound -d -vv