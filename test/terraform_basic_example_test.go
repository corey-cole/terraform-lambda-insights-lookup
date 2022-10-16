package test

import (
	"fmt"
	"strings"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

var cases = []struct {
	region   string
	hasArm64 bool
}{
	{region: "us-east-1", hasArm64: true},
	{region: "us-east-2", hasArm64: true},
	{region: "us-west-1", hasArm64: false},
	{region: "us-west-2", hasArm64: true},
	{region: "ca-central-1", hasArm64: false},
	{region: "sa-east-1", hasArm64: false},
	{region: "eu-west-1", hasArm64: true},
	{region: "eu-west-2", hasArm64: true},
	{region: "eu-west-3", hasArm64: false},
	{region: "eu-central-1", hasArm64: true},
	{region: "ap-southeast-1", hasArm64: true},
	{region: "ap-southeast-2", hasArm64: true},
	{region: "ap-northeast-1", hasArm64: true},
	{region: "ap-northeast-2", hasArm64: false},
	{region: "ap-south-1", hasArm64: true},
	{region: "eu-north-1", hasArm64: false},
}

// Unit test adapted from Terratest basic example
// https://github.com/gruntwork-io/terratest/blob/master/test/terraform_basic_example_test.go
func TestRegionInArn(t *testing.T) {
	//Use of .Parallel has proved to be flaky in practice, disabling.
	//t.Parallel()

	for _, tt := range cases {
		tt := tt // this
		t.Run(fmt.Sprintf("Check ARN for region %s", tt.region), func(t *testing.T) {
			terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
				TerraformDir: "../examples/terraform-basic-example",
				Vars: map[string]interface{}{
					"region": tt.region,
				},
				NoColor: true,
			})
			defer terraform.Destroy(t, terraformOptions)
			terraform.InitAndApply(t, terraformOptions)
			actualLayerArn := terraform.Output(t, terraformOptions, "layer_arn")
			// The ARN should contain the requested region
			assert.True(t, strings.Contains(actualLayerArn, tt.region))
		})
	}
}

// Not all regions have published layers for Arm64, either because Arm64 isn't available in the
// region or it hasn't been pushed out yet.
func TestArm64Regions(t *testing.T) {
	//t.Parallel()

	for _, tt := range cases {
		tt := tt // this
		t.Run(fmt.Sprintf("Check Arm64 for region %s", tt.region), func(t *testing.T) {
			terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
				TerraformDir: "../examples/terraform-basic-example",
				Vars: map[string]interface{}{
					"region":       tt.region,
					"architecture": "arm64",
				},
				NoColor: true,
			})
			defer terraform.Destroy(t, terraformOptions)
			terraform.InitAndApply(t, terraformOptions)
			actualLayerArn := terraform.Output(t, terraformOptions, "layer_arn")
			if tt.hasArm64 {
				// The ARN should contain the requested region
				assert.True(t, strings.Contains(actualLayerArn, tt.region))
			} else {
				assert.Equal(t, actualLayerArn, "")
			}
		})
	}
}
