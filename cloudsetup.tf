provider "aws" {
   region = "ap-south-1"
   profile = "abhi"
}

resource "aws_instance" "web" {
  ami          ="ami-0732b62d310b80e97"
  instance_type="t2.micro"
  key_name = "mykey1111"
  security_groups = [ "launch-wizard-5" ]

   connection {
      type     = "ssh"
      user     = "ec2-user"
      private_key = file("C:/Users/sanjay/Downloads/mykey1111.pem")
      host        = aws_instance.web.public_ip
     }

   provisioner "remote-exec" {
      inline = [
         "sudo yum install httpd php git -y",
          "sudo systemctl restart httpd",
           "sudo systemctl enable httpd",
          ]
   }

   tags = {
     Name = "Goodbye"
   }
 }


 resource "aws_ebs_volume" "ebs1" {
     availability_zone = aws_instance.web.availability_zone
     size                    =1
     tags = {
       Name = "just_an_ebs"
   }
}    

resource "aws_volume_attachment" "ebs_att" {
    device_name = "/dev/sdh"
    volume_id   = aws_ebs_volume.ebs1.id
    instance_id = aws_instance.web.id
    force_detach =true
}


output "myos_ip" {
  value = aws_instance.web.public_ip
}


resource "null_resource" "nulllocal2"  {
           provisioner "local-exec" {
              command = "echo  ${aws_instance.web.public_ip} > publicip.txt"
             }
     }


resource "null_resource" "nullremote3" {

depends_on =[
   aws_volume_attachment.ebs_att,
  ]

   
  connection {
      type   ="ssh"
      user   ="ec2-user"
      private_key =file("C:/Users/sanjay/Downloads/mykey1111.pem")
      host     = aws_instance.web.public_ip
    }

provisioner "remote-exec" {
    inline  = [
       "sudo mkfs.ext4  /dev/xvdh",
       "sudo mount  /dev/xvdh   /var/www/html",
       "sudo rm -rf /var/www/html/*",
       "sudo git clone https://github.com/Abhishek-569/multicloud.git /var/www/html/"
          ]
       }
   }


resource "null_resource" "nulllocal1"  {


depends_on = [
   null_resource.nullremote3,
  ]
             
         provisioner "local-exec" {
            command = "start msedge   ${aws_instance.web.public_ip}"
      }
}















































