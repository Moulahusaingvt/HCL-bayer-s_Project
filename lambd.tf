resource "aws_lambda_function" "my_lambda" {
  function_name = "my_lambda_container"
  package_type  = "Image"
  image_uri     = "<your_ecr_url>/my_lambda_image:latest"
  role          = aws_iam_role.lambda_role.arn
  memory_size   = 512
  timeout       = 30
}
