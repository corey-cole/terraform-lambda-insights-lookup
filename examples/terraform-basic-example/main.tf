module "lambda_insights_layer" {
    // Relative path for testing.  Use commented line to point to GitHub version
    source = "../../"
    //source = "github.com/corey-cole/terraform-lambda-insights-lookup"

    region = var.region
}