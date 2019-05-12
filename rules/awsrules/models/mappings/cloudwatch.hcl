mapping {
  resource {
    type      = "aws_cloudwatch_event_permission"
    attribute = "principal"
  }
  model {
    path  = "aws-sdk-go/models/apis/events/2015-10-07/api-2.json"
    shape = "Principal"
  }
  test {
    ok = "*"
    ng = "-"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_event_permission"
    attribute = "statement_id"
  }
  model {
    path  = "aws-sdk-go/models/apis/events/2015-10-07/api-2.json"
    shape = "StatementId"
  }
  test {
    ok = "OrganizationAccess"
    ng = "Organization Access"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_event_permission"
    attribute = "action"
  }
  model {
    path  = "aws-sdk-go/models/apis/events/2015-10-07/api-2.json"
    shape = "Action"
  }
  test {
    ok = "events:PutEvents"
    ng = "cloudwatchevents:PutEvents"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_event_rule"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/events/2015-10-07/api-2.json"
    shape = "RuleName"
  }
  test {
    ok = "capture-aws-sign-in"
    ng = "capture aws sign in"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_event_rule"
    attribute = "schedule_expression"
  }
  model {
    path  = "aws-sdk-go/models/apis/events/2015-10-07/api-2.json"
    shape = "ScheduleExpression"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_event_rule"
    attribute = "description"
  }
  model {
    path  = "aws-sdk-go/models/apis/events/2015-10-07/api-2.json"
    shape = "RuleDescription"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_event_rule"
    attribute = "role_arn"
  }
  model {
    path  = "aws-sdk-go/models/apis/events/2015-10-07/api-2.json"
    shape = "RoleArn"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_event_target"
    attribute = "rule"
  }
  model {
    path  = "aws-sdk-go/models/apis/events/2015-10-07/api-2.json"
    shape = "RuleName"
  }
  test {
    ok = "capture-aws-sign-in"
    ng = "capture aws sign in"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_event_target"
    attribute = "target_id"
  }
  model {
    path  = "aws-sdk-go/models/apis/events/2015-10-07/api-2.json"
    shape = "TargetId"
  }
  test {
    ok = "run-scheduled-task-every-hour"
    ng = "run scheduled task every hour"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_event_target"
    attribute = "arn"
  }
  model {
    path  = "aws-sdk-go/models/apis/events/2015-10-07/api-2.json"
    shape = "TargetArn"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_event_target"
    attribute = "input"
  }
  model {
    path  = "aws-sdk-go/models/apis/events/2015-10-07/api-2.json"
    shape = "TargetInput"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_event_target"
    attribute = "input_path"
  }
  model {
    path  = "aws-sdk-go/models/apis/events/2015-10-07/api-2.json"
    shape = "TargetInputPath"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_event_target"
    attribute = "role_arn"
  }
  model {
    path  = "aws-sdk-go/models/apis/events/2015-10-07/api-2.json"
    shape = "RoleArn"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_destination"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "DestinationName"
  }
  test {
    ok = "test_destination"
    ng = "test:destination"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_destination_policy"
    attribute = "destination_name"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "DestinationName"
  }
  test {
    ok = "test_destination"
    ng = "test:destination"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_group"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "LogGroupName"
  }
  test {
    ok = "Yada"
    ng = "Yoda:prod"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_group"
    attribute = "kms_key_id"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "KmsKeyId"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_metric_filter"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "FilterName"
  }
  test {
    ok = "MyAppAccessCount"
    ng = "MyAppAccessCount:prod"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_metric_filter"
    attribute = "pattern"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "FilterPattern"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_metric_filter"
    attribute = "log_group_name"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "LogGroupName"
  }
  test {
    ok = "Yada"
    ng = "Yoda:prod"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_resource_policy"
    attribute = "policy_document"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "PolicyDocument"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_stream"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "LogStreamName"
  }
  test {
    ok = "Yada"
    ng = "Yoda:prod"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_stream"
    attribute = "log_group_name"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "LogGroupName"
  }
  test {
    ok = "Yada"
    ng = "Yoda:prod"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_subscription_filter"
    attribute = "name"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "FilterName"
  }
  test {
    ok = "test_lambdafunction_logfilter"
    ng = "test_lambdafunction_logfilter:test"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_subscription_filter"
    attribute = "filter_pattern"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "FilterPattern"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_subscription_filter"
    attribute = "log_group_name"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "LogGroupName"
  }
  test {
    ok = "/aws/lambda/example_lambda_name"
    ng = "/aws/lambda/example_lambda_name:test"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_log_subscription_filter"
    attribute = "distribution"
  }
  model {
    path  = "aws-sdk-go/models/apis/logs/2014-03-28/api-2.json"
    shape = "Distribution"
  }
  test {
    ok = "Random"
    ng = "LogStream"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_metric_alarm"
    attribute = "alarm_name"
  }
  model {
    path  = "aws-sdk-go/models/apis/monitoring/2010-08-01/api-2.json"
    shape = "AlarmName"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_metric_alarm"
    attribute = "comparison_operator"
  }
  model {
    path  = "aws-sdk-go/models/apis/monitoring/2010-08-01/api-2.json"
    shape = "ComparisonOperator"
  }
  test {
    ok = "GreaterThanOrEqualToThreshold"
    ng = "GreaterThanOrEqual"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_metric_alarm"
    attribute = "metric_name"
  }
  model {
    path  = "aws-sdk-go/models/apis/monitoring/2010-08-01/api-2.json"
    shape = "MetricName"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_metric_alarm"
    attribute = "namespace"
  }
  model {
    path  = "aws-sdk-go/models/apis/monitoring/2010-08-01/api-2.json"
    shape = "Namespace"
  }
  test {
    ok = "AWS/EC2"
    ng = ":EC2"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_metric_alarm"
    attribute = "statistic"
  }
  model {
    path  = "aws-sdk-go/models/apis/monitoring/2010-08-01/api-2.json"
    shape = "Statistic"
  }
  test {
    ok = "Average"
    ng = "Median"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_metric_alarm"
    attribute = "alarm_description"
  }
  model {
    path  = "aws-sdk-go/models/apis/monitoring/2010-08-01/api-2.json"
    shape = "AlarmDescription"
  }
}

mapping { # TODO: Remove aws_cloudwatch_metric_alarm_invalid_unit
  resource {
    type      = "aws_cloudwatch_metric_alarm"
    attribute = "unit"
  }
  model {
    path  = "aws-sdk-go/models/apis/monitoring/2010-08-01/api-2.json"
    shape = "StandardUnit"
  }
  test {
    ok = "Gigabytes"
    ng = "GB"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_metric_alarm"
    attribute = "extended_statistic"
  }
  model {
    path  = "aws-sdk-go/models/apis/monitoring/2010-08-01/api-2.json"
    shape = "ExtendedStatistic"
  }
  test {
    ok = "p100"
    ng = "p101"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_metric_alarm"
    attribute = "treat_missing_data"
  }
  model {
    path  = "aws-sdk-go/models/apis/monitoring/2010-08-01/api-2.json"
    shape = "TreatMissingData"
  }
}

mapping {
  resource {
    type      = "aws_cloudwatch_metric_alarm"
    attribute = "evaluate_low_sample_count_percentiles"
  }
  model {
    path  = "aws-sdk-go/models/apis/monitoring/2010-08-01/api-2.json"
    shape = "EvaluateLowSampleCountPercentile"
  }
}
