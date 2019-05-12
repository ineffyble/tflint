// This file generated by `tools/model-rule-gen/main.go`. DO NOT EDIT

package models

import (
	"log"

	"github.com/hashicorp/hcl2/hcl"
	"github.com/wata727/tflint/issue"
	"github.com/wata727/tflint/tflint"
)

// AwsCloudwatchLogMetricFilterInvalidPatternRule checks the pattern is valid
type AwsCloudwatchLogMetricFilterInvalidPatternRule struct {
	resourceType  string
	attributeName string
	max           int
}

// NewAwsCloudwatchLogMetricFilterInvalidPatternRule returns new rule with default attributes
func NewAwsCloudwatchLogMetricFilterInvalidPatternRule() *AwsCloudwatchLogMetricFilterInvalidPatternRule {
	return &AwsCloudwatchLogMetricFilterInvalidPatternRule{
		resourceType:  "aws_cloudwatch_log_metric_filter",
		attributeName: "pattern",
		max:           1024,
	}
}

// Name returns the rule name
func (r *AwsCloudwatchLogMetricFilterInvalidPatternRule) Name() string {
	return "aws_cloudwatch_log_metric_filter_invalid_pattern"
}

// Enabled returns whether the rule is enabled by default
func (r *AwsCloudwatchLogMetricFilterInvalidPatternRule) Enabled() bool {
	return true
}

// Type returns the rule severity
func (r *AwsCloudwatchLogMetricFilterInvalidPatternRule) Type() string {
	return issue.ERROR
}

// Link returns the rule reference link
func (r *AwsCloudwatchLogMetricFilterInvalidPatternRule) Link() string {
	return ""
}

// Check checks the pattern is valid
func (r *AwsCloudwatchLogMetricFilterInvalidPatternRule) Check(runner *tflint.Runner) error {
	log.Printf("[INFO] Check `%s` rule for `%s` runner", r.Name(), runner.TFConfigPath())

	return runner.WalkResourceAttributes(r.resourceType, r.attributeName, func(attribute *hcl.Attribute) error {
		var val string
		err := runner.EvaluateExpr(attribute.Expr, &val)

		return runner.EnsureNoError(err, func() error {
			if len(val) > r.max {
				runner.EmitIssue(
					r,
					"pattern must be 1024 characters or less",
					attribute.Expr.Range(),
				)
			}
			return nil
		})
	})
}
