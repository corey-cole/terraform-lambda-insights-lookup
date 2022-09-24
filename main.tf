locals {
  // x86_64, 1.0.143.0
  // arm64, 1.0.135.0
  insights_layer_arns = {
    us-east-1 = {
      x86_64 = "arn:aws:lambda:us-east-1:580247275435:layer:LambdaInsightsExtension:21",
      arm64  = "arn:aws:lambda:us-east-1:580247275435:layer:LambdaInsightsExtension-Arm64:2"
    },
    us-east-2 = {
      x86_64 = "arn:aws:lambda:us-east-2:580247275435:layer:LambdaInsightsExtension:21"
      arm64  = "arn:aws:lambda:us-east-2:580247275435:layer:LambdaInsightsExtension-Arm64:2"
    },
    us-west-1 = {
      x86_64 = "arn:aws:lambda:us-west-1:580247275435:layer:LambdaInsightsExtension:20",
      arm64  = ""
    },
    us-west-2 = {
      x86_64 = "arn:aws:lambda:us-west-2:580247275435:layer:LambdaInsightsExtension:21",
      arm64  = "arn:aws:lambda:us-west-2:580247275435:layer:LambdaInsightsExtension-Arm64:2"
    },
    af-south-1 = {
      x86_64 = "arn:aws:lambda:af-south-1:012438385374:layer:LambdaInsightsExtension:13",
      arm64  = ""
    },
    ap-east-1 = {
      x86_64 = "arn:aws:lambda:ap-east-1:519774774795:layer:LambdaInsightsExtension:13",
      arm64  = ""
    },
    ap-south-1 = {
      x86_64 = "arn:aws:lambda:ap-south-1:580247275435:layer:LambdaInsightsExtension:21",
      arm64  = "arn:aws:lambda:ap-south-1:580247275435:layer:LambdaInsightsExtension-Arm64:2"
    },
    ap-northeast-1 = {
      x86_64 = "",
      arm64  = ""
    },
    ap-northeast-2 = {
      x86_64 = "arn:aws:lambda:ap-northeast-2:580247275435:layer:LambdaInsightsExtension:20",
      arm64  = ""
    },
    ap-northeast-3 = {
      x86_64 = "arn:aws:lambda:ap-northeast-3:194566237122:layer:LambdaInsightsExtension:2",
      arm64  = ""
    },
    ap-southeast-1 = {
      x86_64 = "arn:aws:lambda:ap-southeast-1:580247275435:layer:LambdaInsightsExtension:21",
      arm64  = "arn:aws:lambda:ap-southeast-1:580247275435:layer:LambdaInsightsExtension-Arm64:2"
    },
    ap-southeast-2 = {
      x86_64 = "arn:aws:lambda:ap-southeast-2:580247275435:layer:LambdaInsightsExtension:21",
      arm64  = "arn:aws:lambda:ap-southeast-2:580247275435:layer:LambdaInsightsExtension-Arm64:2"
    },
    ap-northeast-1 = {
      x86_64 = "arn:aws:lambda:ap-northeast-1:580247275435:layer:LambdaInsightsExtension:32",
      arm64  = "arn:aws:lambda:ap-northeast-1:580247275435:layer:LambdaInsightsExtension-Arm64:2"
    },
    ca-central-1 = {
      x86_64 = "arn:aws:lambda:ca-central-1:580247275435:layer:LambdaInsightsExtension:20",
      arm64  = ""
    },
    cn-north-1 = {
      x86_64 = "arn:aws-cn:lambda:cn-north-1:488211338238:layer:LambdaInsightsExtension:14",
      arm64  = ""
    },
    cn-northwest-1 = {
      x86_64 = "arn:aws-cn:lambda:cn-northwest-1:488211338238:layer:LambdaInsightsExtension:14",
      arm64  = ""
    },
    eu-central-1 = {
      x86_64 = "arn:aws:lambda:eu-central-1:580247275435:layer:LambdaInsightsExtension:21",
      arm64  = "arn:aws:lambda:eu-central-1:580247275435:layer:LambdaInsightsExtension-Arm64:2"
    },
    eu-west-1 = {
      x86_64 = "arn:aws:lambda:eu-west-1:580247275435:layer:LambdaInsightsExtension:21",
      arm64  = "arn:aws:lambda:eu-west-1:580247275435:layer:LambdaInsightsExtension-Arm64:2"
    },
    eu-west-2 = {
      x86_64 = "arn:aws:lambda:eu-west-2:580247275435:layer:LambdaInsightsExtension:21",
      arm64  = "arn:aws:lambda:eu-west-2:580247275435:layer:LambdaInsightsExtension-Arm64:2"
    },
    eu-south-1 = {
      x86_64 = "arn:aws:lambda:eu-south-1:339249233099:layer:LambdaInsightsExtension:13",
      arm64  = ""
    },
    eu-west-3 = {
      x86_64 = "arn:aws:lambda:eu-west-3:580247275435:layer:LambdaInsightsExtension:20",
      arm64  = ""
    },
    eu-north-1 = {
      x86_64 = "arn:aws:lambda:eu-north-1:580247275435:layer:LambdaInsightsExtension:20",
      arm64  = ""
    },
    me-south-1 = {
      x86_64 = "arn:aws:lambda:me-south-1:285320876703:layer:LambdaInsightsExtension:13",
      arm64  = ""
    },
    sa-east-1 = {
      x86_64 = "arn:aws:lambda:sa-east-1:580247275435:layer:LambdaInsightsExtension:20",
      arm64  = ""
    }
  }
}

/*
 * ARM64 1.0.135.0
 * https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Lambda-Insights-extension-versionsARM.html
 */
