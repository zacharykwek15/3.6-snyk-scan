# Defines the lambda function code that will be zipped

data "archive_file" "lambda_zip" {
  type        = "zip"
  source_file = "${path.module}/lambda/hello.py"
  output_path = "${path.module}/lambda/hello.zip"
}

# Defines the lambda function to be created using file
