locals {
  // x86_64, 1.0.229.0
  // arm64, 1.0.229.0
  insights_layer_arns = {
    us-east-1 = {
      x86_64 = "arn:aws:lambda:us-east-1:580247275435:layer:LambdaInsightsExtension:38",
      arm64  = "arn:aws:lambda:us-east-1:580247275435:layer:LambdaInsightsExtension-Arm64:5"
    },
    us-east-2 = {
      x86_64 = "arn:aws:lambda:us-east-2:580247275435:layer:LambdaInsightsExtension:38"
      arm64  = "arn:aws:lambda:us-east-2:580247275435:layer:LambdaInsightsExtension-Arm64:7"
    },
    us-west-1 = {
      x86_64 = "arn:aws:lambda:us-west-1:580247275435:layer:LambdaInsightsExtension:38",
      arm64  = "arn:aws:lambda:us-west-1:580247275435:layer:LambdaInsightsExtension-Arm64:3"
    },
    us-west-2 = {
      x86_64 = "arn:aws:lambda:us-west-2:580247275435:layer:LambdaInsightsExtension:38",
      arm64  = "arn:aws:lambda:us-west-2:580247275435:layer:LambdaInsightsExtension-Arm64:5"
    },
    af-south-1 = {
      x86_64 = "arn:aws:lambda:af-south-1:012438385374:layer:LambdaInsightsExtension:28",
      arm64  = "arn:aws:lambda:af-south-1:012438385374:layer:LambdaInsightsExtension-Arm64:2"
    },
    ap-east-1 = {
      x86_64 = "arn:aws:lambda:ap-east-1:519774774795:layer:LambdaInsightsExtension:28",
      arm64  = "arn:aws:lambda:ap-east-1:519774774795:layer:LambdaInsightsExtension-Arm64:2"
    },
    ap-south-1 = {
      x86_64 = "arn:aws:lambda:ap-south-1:580247275435:layer:LambdaInsightsExtension:36",
      arm64  = "arn:aws:lambda:ap-south-1:580247275435:layer:LambdaInsightsExtension-Arm64:7"
    },
    ap-south-2 = {
      x86_64 = "arn:aws:lambda:ap-south-2:891564319516:layer:LambdaInsightsExtension:10",
      arm64  = ""
    },
    ap-northeast-1 = {
      x86_64 = "arn:aws:lambda:ap-northeast-1:580247275435:layer:LambdaInsightsExtension:60",
      arm64  = "arn:aws:lambda:ap-northeast-1:580247275435:layer:LambdaInsightsExtension-Arm64:11"
    },
    ap-northeast-2 = {
      x86_64 = "arn:aws:lambda:ap-northeast-2:580247275435:layer:LambdaInsightsExtension:37",
      arm64  = "arn:aws:lambda:ap-northeast-2:580247275435:layer:LambdaInsightsExtension-Arm64:4"
    },
    ap-northeast-3 = {
      x86_64 = "arn:aws:lambda:ap-northeast-3:194566237122:layer:LambdaInsightsExtension:19",
      arm64  = "arn:aws:lambda:ap-northeast-3:194566237122:layer:LambdaInsightsExtension-Arm64:2"
    },
    ap-southeast-1 = {
      x86_64 = "arn:aws:lambda:ap-southeast-1:580247275435:layer:LambdaInsightsExtension:38",
      arm64  = "arn:aws:lambda:ap-southeast-1:580247275435:layer:LambdaInsightsExtension-Arm64:5"
    },
    ap-southeast-2 = {
      x86_64 = "arn:aws:lambda:ap-southeast-2:580247275435:layer:LambdaInsightsExtension:38",
      arm64  = "arn:aws:lambda:ap-southeast-2:580247275435:layer:LambdaInsightsExtension-Arm64:5"
    },
    ap-southeast-3 = {
      x86_64 = "arn:aws:lambda:ap-southeast-3:439286490199:layer:LambdaInsightsExtension:14",
      arm64  = "arn:aws:lambda:ap-southeast-3:439286490199:layer:LambdaInsightsExtension-Arm64:2"
    },
    ap-southeast-4 = {
      x86_64 = "arn:aws:lambda:ap-southeast-4:158895979263:layer:LambdaInsightsExtension:5",
      arm64  = ""
    },
    ca-central-1 = {
      x86_64 = "arn:aws:lambda:ca-central-1:580247275435:layer:LambdaInsightsExtension:37",
      arm64  = "arn:aws:lambda:ca-central-1:580247275435:layer:LambdaInsightsExtension-Arm64:3"
    },
    cn-north-1 = {
      x86_64 = "arn:aws-cn:lambda:cn-north-1:488211338238:layer:LambdaInsightsExtension:29",
      arm64  = ""
    },
    cn-northwest-1 = {
      x86_64 = "arn:aws-cn:lambda:cn-northwest-1:488211338238:layer:LambdaInsightsExtension:29",
      arm64  = ""
    },
    eu-central-1 = {
      x86_64 = "arn:aws:lambda:eu-central-1:580247275435:layer:LambdaInsightsExtension:38",
      arm64  = "arn:aws:lambda:eu-central-1:580247275435:layer:LambdaInsightsExtension-Arm64:5"
    },
    eu-central-2 = {
      x86_64 = "arn:aws:lambda:eu-central-2:033019950311:layer:LambdaInsightsExtension:11",
      arm64  = "arn:aws:lambda:eu-central-1:580247275435:layer:LambdaInsightsExtension-Arm64:2"
    },
    eu-west-1 = {
      x86_64 = "arn:aws:lambda:eu-west-1:580247275435:layer:LambdaInsightsExtension:38",
      arm64  = "arn:aws:lambda:eu-west-1:580247275435:layer:LambdaInsightsExtension-Arm64:5"
    },
    eu-west-2 = {
      x86_64 = "arn:aws:lambda:eu-west-2:580247275435:layer:LambdaInsightsExtension:38",
      arm64  = "arn:aws:lambda:eu-west-2:580247275435:layer:LambdaInsightsExtension-Arm64:5"
    },
    eu-west-3 = {
      x86_64 = "arn:aws:lambda:eu-west-3:580247275435:layer:LambdaInsightsExtension:37",
      arm64  = "arn:aws:lambda:eu-west-3:580247275435:layer:LambdaInsightsExtension-Arm64:3"
    },
    eu-south-1 = {
      x86_64 = "arn:aws:lambda:eu-south-1:339249233099:layer:LambdaInsightsExtension:28",
      arm64  = "arn:aws:lambda:eu-south-1:339249233099:layer:LambdaInsightsExtension-Arm64:2"
    },
    eu-south-2 = {
      x86_64 = "arn:aws:lambda:eu-south-2:352183217350:layer:LambdaInsightsExtension:12",
      arm64  = ""
    },
    eu-north-1 = {
      x86_64 = "arn:aws:lambda:eu-north-1:580247275435:layer:LambdaInsightsExtension:35",
      arm64  = "arn:aws:lambda:eu-north-1:580247275435:layer:LambdaInsightsExtension-Arm64:3"
    },
    il-central-1 = {
      x86_64 = "arn:aws:lambda:il-central-1:459530977127:layer:LambdaInsightsExtension:5",
      arm64  = ""
    },
    me-central-1 = {
      x86_64 = "arn:aws:lambda:me-central-1:732604637566:layer:LambdaInsightsExtension:11",
      arm64  = ""
    },
    me-south-1 = {
      x86_64 = "arn:aws:lambda:me-south-1:285320876703:layer:LambdaInsightsExtension:28",
      arm64  = "arn:aws:lambda:me-south-1:285320876703:layer:LambdaInsightsExtension-Arm64:2"
    },
    sa-east-1 = {
      x86_64 = "arn:aws:lambda:sa-east-1:580247275435:layer:LambdaInsightsExtension:37",
      arm64  = "arn:aws:lambda:sa-east-1:580247275435:layer:LambdaInsightsExtension-Arm64:3"
    }
  }
}
