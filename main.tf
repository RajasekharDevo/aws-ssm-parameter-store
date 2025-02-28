resource "aws_ssm_parameter" "parameters" {
  count = length (var.parameters)
  name = var.parameters [count.index].name
  value = var.parameters [count.index].value
  type = "String"
  key_id= "23fbbd89-e1ad-4fe9-97d2-238a2f996ef9"
}