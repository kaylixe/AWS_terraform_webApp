resource "aws_instance" "vprofile-bastion" {
  ami                         = var.AMIS[var.AWS_REGION]
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.vprofilekey.key_name
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.vprofile-bastion-sg.id]

  tags = {
    Name    = "vprofile-bastion"
    PROJECT = "vprofile"
  }

  provisioner "file" {
    content     = templatefile("templates/db_deploy.tmpl", { rds-endpoint = aws_db_instance.vprofile-rds.address, dbuser = var.dbuser, dbpass = var.dbpass })
    destination = "/tmp/vprofile-dbdeploy.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/vprofile-dbdeploy.sh",
      "/tmp/vprofile-dbdeploy.sh"
    ]
  }

  connection {
    user        = var.USERNAME
    private_key = file(var.PRIV_KEY_PATH)
    host        = self.public_ip
  }
  depends_on = [aws_db_instance.vprofile-rds]
}