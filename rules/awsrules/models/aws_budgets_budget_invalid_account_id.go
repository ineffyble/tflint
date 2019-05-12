// This file generated by `tools/model-rule-gen/main.go`. DO NOT EDIT

package models

import (
	"log"
	"regexp"

	"github.com/hashicorp/hcl2/hcl"
	"github.com/wata727/tflint/issue"
	"github.com/wata727/tflint/tflint"
)

// AwsBudgetsBudgetInvalidAccountIDRule checks the pattern is valid
type AwsBudgetsBudgetInvalidAccountIDRule struct {
	resourceType  string
	attributeName string
	max           int
	min           int
	pattern       *regexp.Regexp
}

// NewAwsBudgetsBudgetInvalidAccountIDRule returns new rule with default attributes
func NewAwsBudgetsBudgetInvalidAccountIDRule() *AwsBudgetsBudgetInvalidAccountIDRule {
	return &AwsBudgetsBudgetInvalidAccountIDRule{
		resourceType:  "aws_budgets_budget",
		attributeName: "account_id",
		max:           12,
		min:           12,
		pattern:       regexp.MustCompile(`^\d{12}$`),
	}
}

// Name returns the rule name
func (r *AwsBudgetsBudgetInvalidAccountIDRule) Name() string {
	return "aws_budgets_budget_invalid_account_id"
}

// Enabled returns whether the rule is enabled by default
func (r *AwsBudgetsBudgetInvalidAccountIDRule) Enabled() bool {
	return true
}

// Type returns the rule severity
func (r *AwsBudgetsBudgetInvalidAccountIDRule) Type() string {
	return issue.ERROR
}

// Link returns the rule reference link
func (r *AwsBudgetsBudgetInvalidAccountIDRule) Link() string {
	return ""
}

// Check checks the pattern is valid
func (r *AwsBudgetsBudgetInvalidAccountIDRule) Check(runner *tflint.Runner) error {
	log.Printf("[INFO] Check `%s` rule for `%s` runner", r.Name(), runner.TFConfigPath())

	return runner.WalkResourceAttributes(r.resourceType, r.attributeName, func(attribute *hcl.Attribute) error {
		var val string
		err := runner.EvaluateExpr(attribute.Expr, &val)

		return runner.EnsureNoError(err, func() error {
			if len(val) > r.max {
				runner.EmitIssue(
					r,
					"account_id must be 12 characters or less",
					attribute.Expr.Range(),
				)
			}
			if len(val) < r.min {
				runner.EmitIssue(
					r,
					"account_id must be 12 characters or higher",
					attribute.Expr.Range(),
				)
			}
			if !r.pattern.MatchString(val) {
				runner.EmitIssue(
					r,
					`account_id does not match valid pattern ^\d{12}$`,
					attribute.Expr.Range(),
				)
			}
			return nil
		})
	})
}
