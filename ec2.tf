resource "aws_instance" "bastion" {
  ami           = "ami-09d3b3274b6c5d4aa" 
  subnet_id = module.mynetwork.sub4
  instance_type = "t2.micro"
  associate_public_ip_address="true"
  
  
vpc_security_group_ids=[module.mynetwork.publicsg]

 provisioner "local-exec" {
    command= "echo ${self.public_ip} >>ip_address.txt"

  }








provisioner "local-exec" {

command= " echo ${self.private_ip}>>ip_privite.txt"

  }





}



resource "aws_instance" "priviteec2" {
  ami           = "ami-09d3b3274b6c5d4aa" # us-west-2
  subnet_id = module.mynetwork.sub2
  instance_type = "t2.micro"
  vpc_security_group_ids=[module.mynetwork.privitesg]
 
}






























