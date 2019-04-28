#!/bin/sh
echo '|1|tCbF6ylipISewwuZfzDbsw623ic=|zj/fFRcWw7BfUrYvl0pTSmSfqNQ= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBAGp1W0jQ217mdjE0OvggNr/wg9kHYYgmlTcA/ObLKN5bCtPpMJGDdm/vAYbSFaBtHHiOAQQmPg6LejJuOhk7Zo=' >>$HOME/.ssh/known_hosts
echo '|1|jKCOWAH9yrDZ3ey2kQewgzuMjvc=|tivCVhqU7PCYU6Sz6AAAPN735/c= ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDypicw6GdbqBGMXgcrXoxRNUyOJWRBzv06a2TMlO7fQ34OSiekvBcJue7HLnFNYUpqlr7SHKynK8OcP8pFMntJEoDgIboWuFCphZhzEfBSjpryNF/Cp8jpF4vswi42FpbWCsooGn9NuXmW0isoCWQVEz73412gSvFnbgG/s8JSf21wlVl1yUDBI6m5btrikhGU34movU/3qQy44x/02pvBVAenTaSfH2IyjayUpr7vb0fF/inNCebmDAKitJ5vbfmVuoCYcZ0P+KSuR7XjVuFa2SbS5AJbUwKRj31tw4Fd1I1yii3XBKYm5DygkVCSIfTvu7Qi/B4nE97RymtSp5cr' >>$HOME/.ssh/known_hosts
mv docs/build docs/DutyCycles.jl
ssh-add $HOME/.ssh/id_rsa
echo 'put -r docs/DutyCycles.jl' |sftp -P $SSH_PORT $SSH_USER@$SSH_HOST:docs/github.com/Quantum-Factory
