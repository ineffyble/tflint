// This file generated by `tools/model-rule-gen/main.go`. DO NOT EDIT

package models

import (
	"log"
	"regexp"

	"github.com/hashicorp/hcl2/hcl"
	"github.com/wata727/tflint/issue"
	"github.com/wata727/tflint/tflint"
)

// AwsCloudwatchEventPermissionInvalidActionRule checks the pattern is valid
type AwsCloudwatchEventPermissionInvalidActionRule struct {
	resourceType  string
	attributeName string
	max           int
	min           int
	pattern       *regexp.Regexp
}

// NewAwsCloudwatchEventPermissionInvalidActionRule returns new rule with default attributes
func NewAwsCloudwatchEventPermissionInvalidActionRule() *AwsCloudwatchEventPermissionInvalidActionRule {
	return &AwsCloudwatchEventPermissionInvalidActionRule{
		resourceType:  "aws_cloudwatch_event_permission",
		attributeName: "action",
		max:           64,
		min:           1,
		pattern:       regexp.MustCompile(`^events:[a-zA-Z]+$`),
	}
}

// Name returns the rule name
func (r *AwsCloudwatchEventPermissionInvalidActionRule) Name() string {
	return "aws_cloudwatch_event_permission_invalid_action"
}

// Enabled returns whether the rule is enabled by default
func (r *AwsCloudwatchEventPermissionInvalidActionRule) Enabled() bool {
	return true
}

// Type returns the rule severity
func (r *AwsCloudwatchEventPermissionInvalidActionRule) Type() string {
	return issue.ERROR
}

// Link returns the rule reference link
func (r *AwsCloudwatchEventPermissionInvalidActionRule) Link() string {
	return ""
}

// Check checks the pattern is valid
func (r *AwsCloudwatchEventPermissionInvalidActionRule) Check(runner *tflint.Runner) error {
	log.Printf("[INFO] Check `%s` rule for `%s` runner", r.Name(), runner.TFConfigPath())

	return runner.WalkResourceAttributes(r.resourceType, r.attributeName, func(attribute *hcl.Attribute) error {
		var val string
		err := runner.EvaluateExpr(attribute.Expr, &val)

		return runner.EnsureNoError(err, func() error {
			if len(val) > r.max {
				runner.EmitIssue(
					r,
					"action must be 64 characters or less",
					attribute.Expr.Range(),
				)
			}
			if len(val) < r.min {
				runner.EmitIssue(
					r,
					"action must be 1 characters or higher",
					attribute.Expr.Range(),
				)
			}
			if !r.pattern.MatchString(val) {
				runner.EmitIssue(
					r,
					`action does not match valid pattern ^events:[a-zA-Z]+$`,
					attribute.Expr.Range(),
				)
			}
			return nil
		})
	})
}
