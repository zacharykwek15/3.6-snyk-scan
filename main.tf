resource "aws_lambda_function" "hello_lambda" {
  function_name = "hello_lambda"
  handler       = "hello.lambda_handler"
  runtime       = "python3.11"
  filename      = data.archive_file.lambda_zip.output_path
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256
  role = aws_iam_role.lambda_exec_role.arn
}