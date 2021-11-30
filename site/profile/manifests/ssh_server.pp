class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                  ensure => 'running',
                  enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                   ensure => present,
                   user   => 'root',
                   type   =>  'ssh-rsa',
                   key    =>  'AAAAB3NzaC1yc2EAAAADAQABAAABAQDNxNgxVbj4g5n1YRmpAPPmqePkl5nh/eyXntQnPXEfMaqwtsjwfjEUlDdXehDzLZnXsncW1CTc5cpdICbs7QGv0n0pkFirZPLIHqrtCleji3OGr9HyiBLzbOlzXLKYf6Wer2YeZH84YNDOHY4lkeCqvKBTO6sQr9rPFdSw7vZZsJfcrnXmtCxOLpYafX3OlA+Rt2Ux4CNL2QPP3VOCzB8sSe/G8oxIrhh3nww7w2KrCQQfEPPrC7mriNebpOTxiFtOeuR5QNx1QrOfeR+tSGueSBtvcSYSCyUVrB6IRea7eiNV6a7EYmZ6I2/4+8bFir+PwTIx//f5ZIOb52KAzOxX',
            }
  }
  
