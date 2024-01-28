#----------------Create ssh key using ssh-keygen command---------------------------


#resource "aws_key_pair" "AWS-Key-CICD" {
#  key_name   = "deployer-key"
#  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDAoOEkCxUmdyvoN52Ta4rVr+7y3pdYKmt+uE5ZUJQbsTk+Wfvuf6n1bSyXiKC6HDqGSwgCvoDzm1dlRZYl2ofeusjdtR+iT9jfcmbwNrwJf8c5caph9mtzP/To2Fr2skUb0K5yIXN4dfC43vhF5fpPAoyy3uHMRa3M0d/zRpqCnzts+Vf9yygkCFv6mwQdMRuL3QtSFlvUVvQI7ldLXEmtYmscUCZiTrFD8IEyzZdpP/UPNIrvXVM8dMC5+g1ord1B8x4njRuG0Zvy3HeEgQNC/kmwjpHtvbUDJWq4YabvwmEof0SsBY1dMi08roCJFqPb/Wwz4ogBQvB169kr4qEtmCAly7K0gSEr+fgfg4EOW3PfCKKTHzhDXs40VB193zwXEJNqIZUASw2T4wBEUQKvC2XxJFwycW6JsPkXosf67qtQVZhkb7JTq9lmhEbPx8mALNIBFY2LzvC2LHELkBoJgOTskVt+NkApf77AuGsEKDvnTshPlABP9hwVBdZXZ/8= ubuntu@ip-172-31-15-40"
#}
# ssh-keygen # name = ssh_key_aws
# chmod 400 ssh_key_aws
# cat ssh_key_aws >> GitHub Secrets EC2_PRIVATE_SSH_KEY
# cat ssh_key_aws.pub >> GitHub Secrets EC2_PUBLIC_SSH_KEY
