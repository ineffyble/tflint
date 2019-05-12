// This file generated by `tools/model-rule-gen/main.go`. DO NOT EDIT

package rules

import awsmodelrules "github.com/wata727/tflint/rules/awsrules/models"

var modelRules = []Rule{
	awsmodelrules.NewAwsAcmpcaCertificateAuthorityInvalidTypeRule(),
	awsmodelrules.NewAwsAcmCertificateInvalidCertificateBodyRule(),
	awsmodelrules.NewAwsAcmCertificateInvalidCertificateChainRule(),
	awsmodelrules.NewAwsAcmCertificateInvalidPrivateKeyRule(),
	awsmodelrules.NewAwsAPIGatewayGatewayResponseInvalidStatusCodeRule(),
	awsmodelrules.NewAwsAPIGatewayIntegrationResponseInvalidStatusCodeRule(),
	awsmodelrules.NewAwsAPIGatewayMethodResponseInvalidStatusCodeRule(),
	awsmodelrules.NewAwsAPIGatewayAuthorizerInvalidTypeRule(),
	awsmodelrules.NewAwsAPIGatewayGatewayResponseInvalidResponseTypeRule(),
	awsmodelrules.NewAwsAPIGatewayIntegrationInvalidTypeRule(),
	awsmodelrules.NewAwsAPIGatewayIntegrationInvalidConnectionTypeRule(),
	awsmodelrules.NewAwsAPIGatewayIntegrationInvalidContentHandlingRule(),
	awsmodelrules.NewAwsAPIGatewayIntegrationResponseInvalidContentHandlingRule(),
	awsmodelrules.NewAwsAPIGatewayRestAPIInvalidAPIKeySourceRule(),
	awsmodelrules.NewAwsAPIGatewayStageInvalidCacheClusterSizeRule(),
	awsmodelrules.NewAwsAppautoscalingPolicyInvalidPolicyTypeRule(),
	awsmodelrules.NewAwsAppautoscalingPolicyInvalidScalableDimensionRule(),
	awsmodelrules.NewAwsAppautoscalingScheduledActionInvalidScalableDimensionRule(),
	awsmodelrules.NewAwsAppautoscalingTargetInvalidScalableDimensionRule(),
	awsmodelrules.NewAwsAppautoscalingPolicyInvalidServiceNamespaceRule(),
	awsmodelrules.NewAwsAppautoscalingScheduledActionInvalidServiceNamespaceRule(),
	awsmodelrules.NewAwsAppautoscalingTargetInvalidServiceNamespaceRule(),
	awsmodelrules.NewAwsAppmeshMeshInvalidNameRule(),
	awsmodelrules.NewAwsAppmeshRouteInvalidNameRule(),
	awsmodelrules.NewAwsAppmeshRouteInvalidMeshNameRule(),
	awsmodelrules.NewAwsAppmeshRouteInvalidVirtualRouterNameRule(),
	awsmodelrules.NewAwsAppmeshVirtualNodeInvalidNameRule(),
	awsmodelrules.NewAwsAppmeshVirtualNodeInvalidMeshNameRule(),
	awsmodelrules.NewAwsAppmeshVirtualRouterInvalidNameRule(),
	awsmodelrules.NewAwsAppmeshVirtualRouterInvalidMeshNameRule(),
	awsmodelrules.NewAwsAppmeshVirtualServiceInvalidNameRule(),
	awsmodelrules.NewAwsAppmeshVirtualServiceInvalidMeshNameRule(),
	awsmodelrules.NewAwsAppsyncDatasourceInvalidNameRule(),
	awsmodelrules.NewAwsAppsyncDatasourceInvalidTypeRule(),
	awsmodelrules.NewAwsAppsyncGraphqlAPIInvalidAuthenticationTypeRule(),
	awsmodelrules.NewAwsAppsyncResolverInvalidTypeRule(),
	awsmodelrules.NewAwsAppsyncResolverInvalidFieldRule(),
	awsmodelrules.NewAwsAppsyncResolverInvalidDataSourceRule(),
	awsmodelrules.NewAwsAppsyncResolverInvalidRequestTemplateRule(),
	awsmodelrules.NewAwsAppsyncResolverInvalidResponseTemplateRule(),
	awsmodelrules.NewAwsAthenaDatabaseInvalidNameRule(),
	awsmodelrules.NewAwsAthenaNamedQueryInvalidNameRule(),
	awsmodelrules.NewAwsAthenaNamedQueryInvalidDatabaseRule(),
	awsmodelrules.NewAwsAthenaNamedQueryInvalidQueryRule(),
	awsmodelrules.NewAwsAthenaNamedQueryInvalidDescriptionRule(),
	awsmodelrules.NewAwsBackupSelectionInvalidNameRule(),
	awsmodelrules.NewAwsBackupVaultInvalidNameRule(),
	awsmodelrules.NewAwsBatchComputeEnvironmentInvalidStateRule(),
	awsmodelrules.NewAwsBatchComputeEnvironmentInvalidTypeRule(),
	awsmodelrules.NewAwsBatchJobDefinitionInvalidTypeRule(),
	awsmodelrules.NewAwsBatchJobQueueInvalidStateRule(),
	awsmodelrules.NewAwsBudgetsBudgetInvalidAccountIDRule(),
	awsmodelrules.NewAwsBudgetsBudgetInvalidNameRule(),
	awsmodelrules.NewAwsBudgetsBudgetInvalidBudgetTypeRule(),
	awsmodelrules.NewAwsBudgetsBudgetInvalidTimeUnitRule(),
	awsmodelrules.NewAwsCloud9EnvironmentEc2InvalidNameRule(),
	awsmodelrules.NewAwsCloud9EnvironmentEc2InvalidInstanceTypeRule(),
	awsmodelrules.NewAwsCloud9EnvironmentEc2InvalidAutomaticStopTimeMinutesRule(),
	awsmodelrules.NewAwsCloud9EnvironmentEc2InvalidDescriptionRule(),
	awsmodelrules.NewAwsCloud9EnvironmentEc2InvalidOwnerArnRule(),
	awsmodelrules.NewAwsCloud9EnvironmentEc2InvalidSubnetIDRule(),
	awsmodelrules.NewAwsCloudformationStackInvalidTemplateURLRule(),
	awsmodelrules.NewAwsCloudformationStackInvalidCapabilitiesRule(),
	awsmodelrules.NewAwsCloudformationStackInvalidOnFailureRule(),
	awsmodelrules.NewAwsCloudformationStackInvalidPolicyBodyRule(),
	awsmodelrules.NewAwsCloudformationStackInvalidPolicyURLRule(),
	awsmodelrules.NewAwsCloudformationStackInvalidIAMRoleArnRule(),
	awsmodelrules.NewAwsCloudformationStackSetInvalidAdministrationRoleArnRule(),
	awsmodelrules.NewAwsCloudformationStackSetInvalidCapabilitiesRule(),
	awsmodelrules.NewAwsCloudformationStackSetInvalidDescriptionRule(),
	awsmodelrules.NewAwsCloudformationStackSetInvalidExecutionRoleNameRule(),
	awsmodelrules.NewAwsCloudformationStackSetInvalidTemplateURLRule(),
	awsmodelrules.NewAwsCloudformationStackSetInstanceInvalidAccountIDRule(),
	awsmodelrules.NewAwsCloudfrontDistributionInvalidHTTPVersionRule(),
	awsmodelrules.NewAwsCloudfrontDistributionInvalidPriceClassRule(),
	awsmodelrules.NewAwsCloudhsmV2ClusterInvalidSourceBackupIdentifierRule(),
	awsmodelrules.NewAwsCloudhsmV2ClusterInvalidHsmTypeRule(),
	awsmodelrules.NewAwsCloudhsmV2HsmInvalidClusterIDRule(),
	awsmodelrules.NewAwsCloudhsmV2HsmInvalidSubnetIDRule(),
	awsmodelrules.NewAwsCloudhsmV2HsmInvalidAvailabilityZoneRule(),
	awsmodelrules.NewAwsCloudhsmV2HsmInvalidIPAddressRule(),
	awsmodelrules.NewAwsCloudwatchEventPermissionInvalidPrincipalRule(),
	awsmodelrules.NewAwsCloudwatchEventPermissionInvalidStatementIDRule(),
	awsmodelrules.NewAwsCloudwatchEventPermissionInvalidActionRule(),
	awsmodelrules.NewAwsCloudwatchEventRuleInvalidNameRule(),
	awsmodelrules.NewAwsCloudwatchEventRuleInvalidScheduleExpressionRule(),
	awsmodelrules.NewAwsCloudwatchEventRuleInvalidDescriptionRule(),
	awsmodelrules.NewAwsCloudwatchEventRuleInvalidRoleArnRule(),
	awsmodelrules.NewAwsCloudwatchEventTargetInvalidRuleRule(),
	awsmodelrules.NewAwsCloudwatchEventTargetInvalidTargetIDRule(),
	awsmodelrules.NewAwsCloudwatchEventTargetInvalidArnRule(),
	awsmodelrules.NewAwsCloudwatchEventTargetInvalidInputRule(),
	awsmodelrules.NewAwsCloudwatchEventTargetInvalidInputPathRule(),
	awsmodelrules.NewAwsCloudwatchEventTargetInvalidRoleArnRule(),
	awsmodelrules.NewAwsCloudwatchLogDestinationInvalidNameRule(),
	awsmodelrules.NewAwsCloudwatchLogDestinationPolicyInvalidDestinationNameRule(),
	awsmodelrules.NewAwsCloudwatchLogGroupInvalidNameRule(),
	awsmodelrules.NewAwsCloudwatchLogGroupInvalidKmsKeyIDRule(),
	awsmodelrules.NewAwsCloudwatchLogMetricFilterInvalidNameRule(),
	awsmodelrules.NewAwsCloudwatchLogMetricFilterInvalidPatternRule(),
	awsmodelrules.NewAwsCloudwatchLogMetricFilterInvalidLogGroupNameRule(),
	awsmodelrules.NewAwsCloudwatchLogResourcePolicyInvalidPolicyDocumentRule(),
	awsmodelrules.NewAwsCloudwatchLogStreamInvalidNameRule(),
	awsmodelrules.NewAwsCloudwatchLogStreamInvalidLogGroupNameRule(),
	awsmodelrules.NewAwsCloudwatchLogSubscriptionFilterInvalidNameRule(),
	awsmodelrules.NewAwsCloudwatchLogSubscriptionFilterInvalidFilterPatternRule(),
	awsmodelrules.NewAwsCloudwatchLogSubscriptionFilterInvalidLogGroupNameRule(),
	awsmodelrules.NewAwsCloudwatchLogSubscriptionFilterInvalidDistributionRule(),
	awsmodelrules.NewAwsCloudwatchMetricAlarmInvalidAlarmNameRule(),
	awsmodelrules.NewAwsCloudwatchMetricAlarmInvalidComparisonOperatorRule(),
	awsmodelrules.NewAwsCloudwatchMetricAlarmInvalidMetricNameRule(),
	awsmodelrules.NewAwsCloudwatchMetricAlarmInvalidNamespaceRule(),
	awsmodelrules.NewAwsCloudwatchMetricAlarmInvalidStatisticRule(),
	awsmodelrules.NewAwsCloudwatchMetricAlarmInvalidAlarmDescriptionRule(),
	awsmodelrules.NewAwsCloudwatchMetricAlarmInvalidUnitRule(),
	awsmodelrules.NewAwsCloudwatchMetricAlarmInvalidExtendedStatisticRule(),
	awsmodelrules.NewAwsCloudwatchMetricAlarmInvalidTreatMissingDataRule(),
	awsmodelrules.NewAwsCloudwatchMetricAlarmInvalidEvaluateLowSampleCountPercentilesRule(),
	awsmodelrules.NewAwsLaunchTemplateInvalidNameRule(),
}