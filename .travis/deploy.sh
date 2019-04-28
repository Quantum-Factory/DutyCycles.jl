echo '|1|imTtcFGHchGTPyU6F0W1aehT/ps=|sj739mUSGi6dKtfh2k6zJ7moSOs= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBAGp1W0jQ217mdjE0OvggNr/wg9kHYYgmlTcA/ObLKN5bCtPpMJGDdm/vAYbSFaBtHHiOAQQmPg6LejJuOhk7Zo=' >> ~/.ssh/known_hosts
echo '|1|GWbsWgtMhH8cX4UEePPpu3WBhQw=|M1p60qf/++Bc/kgfZodB9bMCxU4= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBAGp1W0jQ217mdjE0OvggNr/wg9kHYYgmlTcA/ObLKN5bCtPpMJGDdm/vAYbSFaBtHHiOAQQmPg6LejJuOhk7Zo=' >> ~/.ssh/known_hosts
mv docs/build docs/DutyCycles.jl
echo -e $SSH_KEY |base64 -d >$HOME/.ssh/id_rsa
chmod 600 $HOME/.ssh/id_rsa
ssh-add
ssh-keyscan -H -p $SSH_PORT $SSH_HOST
echo -e 'put -r docs/DutyCycles.jl' |sftp -P $SSH_PORT $SSH_USER@$SSH_HOST:docs/github.com/Quantum-Factory
