resource "aws_ssm_parameter" "parameter" {
  name = "test.test1"
  value = "Hello world"
  type = "SecureString"
  key_id = "23fbbd89-e1ad-4fe9-97d2-238a2f996ef9"
}