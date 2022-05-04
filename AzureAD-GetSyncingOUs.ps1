(Get-ADSyncConnector -name csb.com).Partitions.ConnectorPartitionScope.ContainerInclusionList

Similarly you can output exclusion list
(Get-ADSyncConnector -name csb.com).Partitions.ConnectorPartitionScope.ContainerExclusionList