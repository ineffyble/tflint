// This file generated by `tools/model-rule-gen/main.go`. DO NOT EDIT

package models

import (
	"log"

	"github.com/hashicorp/hcl2/hcl"
	"github.com/wata727/tflint/issue"
	"github.com/wata727/tflint/tflint"
)

// AwsCloudformationStackInvalidCapabilitiesRule checks the pattern is valid
type AwsCloudformationStackInvalidCapabilitiesRule struct {
	resourceType  string
	attributeName string
	enum          []string
}

// NewAwsCloudformationStackInvalidCapabilitiesRule returns new rule with default attributes
func NewAwsCloudformationStackInvalidCapabilitiesRule() *AwsCloudformationStackInvalidCapabilitiesRule {
	return &AwsCloudformationStackInvalidCapabilitiesRule{
		resourceType:  "aws_cloudformation_stack",
		attributeName: "capabilities",
		enum: []string{
			"CAPABILITY_IAM",
			"CAPABILITY_NAMED_IAM",
			"CAPABILITY_AUTO_EXPAND",
		},
	}
}

// Name returns the rule name
func (r *AwsCloudformationStackInvalidCapabilitiesRule) Name() string {
	return "aws_cloudformation_stack_invalid_capabilities"
}

// Enabled returns whether the rule is enabled by default
func (r *AwsCloudformationStackInvalidCapabilitiesRule) Enabled() bool {
	return true
}

// Type returns the rule severity
func (r *AwsCloudformationStackInvalidCapabilitiesRule) Type() string {
	return issue.ERROR
}

// Link returns the rule reference link
func (r *AwsCloudformationStackInvalidCapabilitiesRule) Link() string {
	return ""
}

// Check checks the pattern is valid
func (r *AwsCloudformationStackInvalidCapabilitiesRule) Check(runner *tflint.Runner) error {
	log.Printf("[INFO] Check `%s` rule for `%s` runner", r.Name(), runner.TFConfigPath())

	return runner.WalkResourceAttributes(r.resourceType, r.attributeName, func(attribute *hcl.Attribute) error {
		var val string
		err := runner.EvaluateExpr(attribute.Expr, &val)

		return runner.EnsureNoError(err, func() error {
			found := false
			for _, item := range r.enum {
				if item == val {
					found = true
				}
			}
			if !found {
				runner.EmitIssue(
					r,
					`capabilities is not a valid value`,
					attribute.Expr.Range(),
				)
			}
			return nil
		})
	})
}