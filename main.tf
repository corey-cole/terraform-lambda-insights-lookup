locals {
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
        af-south-1 = {},
        ap-east-1 = {},
        ap-sout-1 = {}
    }
}

/*
 * ARM64 1.0.135.0
 * https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Lambda-Insights-extension-versionsARM.html
 */

/*
x86-64, 1.0.143.0
Africa (Cape Town)
arn:aws:lambda:af-south-1:012438385374:layer:LambdaInsightsExtension:13
Asia Pacific (Hong Kong)
arn:aws:lambda:ap-east-1:519774774795:layer:LambdaInsightsExtension:13
Asia Pacific (Mumbai)
arn:aws:lambda:ap-south-1:580247275435:layer:LambdaInsightsExtension:21
Asia Pacific (Osaka)
arn:aws:lambda:ap-northeast-3:194566237122:layer:LambdaInsightsExtension:2
Asia Pacific (Seoul)
arn:aws:lambda:ap-northeast-2:580247275435:layer:LambdaInsightsExtension:20
Asia Pacific (Singapore)
arn:aws:lambda:ap-southeast-1:580247275435:layer:LambdaInsightsExtension:21
Asia Pacific (Sydney)
arn:aws:lambda:ap-southeast-2:580247275435:layer:LambdaInsightsExtension:21
Asia Pacific (Tokyo)
arn:aws:lambda:ap-northeast-1:580247275435:layer:LambdaInsightsExtension:32
Canada (Central)
arn:aws:lambda:ca-central-1:580247275435:layer:LambdaInsightsExtension:20
China (Beijing)
arn:aws-cn:lambda:cn-north-1:488211338238:layer:LambdaInsightsExtension:14
China (Ningxia);
arn:aws-cn:lambda:cn-northwest-1:488211338238:layer:LambdaInsightsExtension:14
Europe (Frankfurt)
arn:aws:lambda:eu-central-1:580247275435:layer:LambdaInsightsExtension:21
Europe (Ireland)
arn:aws:lambda:eu-west-1:580247275435:layer:LambdaInsightsExtension:21
Europe (London)
arn:aws:lambda:eu-west-2:580247275435:layer:LambdaInsightsExtension:21
Europe (Milan)
arn:aws:lambda:eu-south-1:339249233099:layer:LambdaInsightsExtension:13
Europe (Paris)
arn:aws:lambda:eu-west-3:580247275435:layer:LambdaInsightsExtension:20
Europe (Stockholm)
arn:aws:lambda:eu-north-1:580247275435:layer:LambdaInsightsExtension:20
Middle East (Bahrain)
arn:aws:lambda:me-south-1:285320876703:layer:LambdaInsightsExtension:13
South America (São Paulo)
arn:aws:lambda:sa-east-1:580247275435:layer:LambdaInsightsExtension:20

*/