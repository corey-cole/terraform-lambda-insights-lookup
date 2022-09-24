# Lambda Insights Layer Lookup

The AWS Lambda Insights layer ARN varies by target region.  This data-only module provides an easy lookup source.
The underlying lookup data can be found in the [Amazon CloudWatch User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Lambda-Insights-extension-versions.html)

## Example
The example below assumes the use of the Lambda resource from the AWS provider.

```terraform
module "lambda_insights_layer" {
  source = "github.com/corey-cole/terraform-lambda-insights-lookup"

  region = "us-west-2"
}

resource "aws_lambda_function" "example" {
  # ... other configuration ...
  layers = [module.lambda_insights_layer.layer_arn]
}

resource "aws_iam_role_policy_attachment" "attach_insights_policy" {
    role = # The role used for the Lambda function
    policy_arn = module.lambda_insights_layer.policy_arn
}
```

## Limitations
1. Not all regions have the ARM64 layer.
1. The managed policy ARN uses the default partition separator ("aws").  If your partition is different, update the value as appropriate.