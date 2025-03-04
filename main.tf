resource "aws_ssm_parameter" "parameters" {
  count = length (var.parameters)
  name = var.parameters [count.index].name
  value = var.parameters [count.index].value
  type = "String"
  key_id= "23fbbd89-e1ad-4fe9-97d2-238a2f996ef9"
}

##Passwords are not at all meant to keep inside the code at all, Here since it is a lab we are doing it to save the time.
resource "aws_ssm_parameter" "passwords" {
  count = length(var.passwords)
  name = var.passwords [count.index].name
  value = var.passwords [count.index].value
  type = "SecureString"
  key_id= "23fbbd89-e1ad-4fe9-97d2-238a2f996ef9"
  overwrite = true
}