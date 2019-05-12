// This file generated by `tools/model-rule-gen/main.go`. DO NOT EDIT

package models

import (
	"log"

	"github.com/hashicorp/hcl2/hcl"
	"github.com/wata727/tflint/issue"
	"github.com/wata727/tflint/tflint"
)

// AwsCloudformationStackInvalidPolicyBodyRule checks the pattern is valid
type AwsCloudformationStackInvalidPolicyBodyRule struct {
	resourceType  string
	attributeName string
	max           int
	min           int
}

// NewAwsCloudformationStackInvalidPolicyBodyRule returns new rule with default attributes
func NewAwsCloudformationStackInvalidPolicyBodyRule() *AwsCloudformationStackInvalidPolicyBodyRule {
	return &AwsCloudformationStackInvalidPolicyBodyRule{
		resourceType:  "aws_cloudformation_stack",
		attributeName: "policy_body",
		max:           16384,
		min:           1,
	}
}

// Name returns the rule name
func (r *AwsCloudformationStackInvalidPolicyBodyRule) Name() string {
	return "aws_cloudformation_stack_invalid_policy_body"
}

// Enabled returns whether the rule is enabled by default
func (r *AwsCloudformationStackInvalidPolicyBodyRule) Enabled() bool {
	return true
}

// Type returns the rule severity
func (r *AwsCloudformationStackInvalidPolicyBodyRule) Type() string {
	return issue.ERROR
}

// Link returns the rule reference link
func (r *AwsCloudformationStackInvalidPolicyBodyRule) Link() string {
	return ""
}

// Check checks the pattern is valid
func (r *AwsCloudformationStackInvalidPolicyBodyRule) Check(runner *tflint.Runner) error {
	log.Printf("[INFO] Check `%s` rule for `%s` runner", r.Name(), runner.TFConfigPath())

	return runner.WalkResourceAttributes(r.resourceType, r.attributeName, func(attribute *hcl.Attribute) error {
		var val string
		err := runner.EvaluateExpr(attribute.Expr, &val)

		return runner.EnsureNoError(err, func() error {
			if len(val) > r.max {
				runner.EmitIssue(
					r,
					"policy_body must be 16384 characters or less",
					attribute.Expr.Range(),
				)
			}
			if len(val) < r.min {
				runner.EmitIssue(
					r,
					"policy_body must be 1 characters or higher",
					attribute.Expr.Range(),
				)
			}
			return nil
		})
	})
}
