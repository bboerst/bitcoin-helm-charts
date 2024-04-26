# mempool

![Version: 0.1.6](https://img.shields.io/badge/Version-0.1.6-informational?style=flat-square) ![AppVersion: v3.0.0-dev8](https://img.shields.io/badge/AppVersion-v3.0.0--dev8-informational?style=flat-square)

A Helm chart for mempool

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | mariadb | 18.0.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| backend.affinity | object | `{}` |  |
| backend.arguments | string | `nil` |  |
| backend.coreRpcHost | string | `"bitcoind"` |  |
| backend.coreRpcPassword | string | `"1234567890abcdefg"` |  |
| backend.coreRpcPort | int | `8332` |  |
| backend.coreRpcUsername | string | `"mempool"` |  |
| backend.env.BISQ_ENABLED | string | `"false"` |  |
| backend.env.LIGHTNING | string | `"false"` |  |
| backend.env.LIQUID_ENABLED | string | `"false"` |  |
| backend.env.MEMPOOL_POOLS_JSON_TREE_URL | string | `"https://api.github.com/repos/mempool/mining-pools/git/trees/master"` |  |
| backend.env.MEMPOOL_POOLS_JSON_URL | string | `"https://raw.githubusercontent.com/mempool/mining-pools/master/pools-v2.json"` |  |
| backend.fullnameOverride | string | `""` |  |
| backend.image.pullPolicy | string | `"IfNotPresent"` |  |
| backend.image.repository | string | `"mempool/backend"` |  |
| backend.image.tag | string | `"v3.0.0-dev8"` |  |
| backend.imagePullSecrets | list | `[]` |  |
| backend.mempoolBackend.type | string | `"none"` |  |
| backend.nameOverride | string | `""` |  |
| backend.nodeSelector | object | `{}` |  |
| backend.persistence.accessMode | string | `"ReadWriteOnce"` |  |
| backend.persistence.enabled | bool | `false` |  |
| backend.persistence.size | string | `"5Gi"` |  |
| backend.persistence.tls | list | `[]` |  |
| backend.podSecurityContext | object | `{}` |  |
| backend.resources | object | `{}` |  |
| backend.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| backend.securityContext.runAsNonRoot | bool | `true` |  |
| backend.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| backend.service.annotations | object | `{}` |  |
| backend.service.enabled | bool | `true` |  |
| backend.service.externalIPs | list | `[]` |  |
| backend.service.externalTrafficPolicy | string | `""` |  |
| backend.service.healthCheckNodePort | int | `0` |  |
| backend.service.labels | object | `{}` |  |
| backend.service.loadBalancerIP | string | `""` |  |
| backend.service.loadBalancerSourceRanges | list | `[]` |  |
| backend.service.omitClusterIP | bool | `false` |  |
| backend.service.sessionAffinity | string | `""` |  |
| backend.service.tcpPort | int | `8999` |  |
| backend.statisticsEnabled | bool | `true` |  |
| backend.strategyType | string | `"Recreate"` |  |
| backend.tolerations | list | `[]` |  |
| frontend.affinity | object | `{}` |  |
| frontend.arguments | string | `nil` |  |
| frontend.fullnameOverride | string | `""` |  |
| frontend.image.pullPolicy | string | `"IfNotPresent"` |  |
| frontend.image.repository | string | `"mempool/frontend"` |  |
| frontend.image.tag | string | `"v3.0.0-dev8"` |  |
| frontend.imagePullSecrets | list | `[]` |  |
| frontend.ingress.annotations | object | `{}` |  |
| frontend.ingress.enabled | bool | `false` |  |
| frontend.ingress.extraPaths | list | `[]` |  |
| frontend.ingress.hosts[0] | string | `"chart-example.local"` |  |
| frontend.ingress.labels | object | `{}` |  |
| frontend.ingress.path | string | `"/"` |  |
| frontend.ingress.pathType | string | `"Prefix"` |  |
| frontend.nameOverride | string | `""` |  |
| frontend.nodeSelector | object | `{}` |  |
| frontend.persistence.accessMode | string | `"ReadWriteOnce"` |  |
| frontend.persistence.enabled | bool | `false` |  |
| frontend.persistence.size | string | `"5Gi"` |  |
| frontend.persistence.tls | list | `[]` |  |
| frontend.podSecurityContext | object | `{}` |  |
| frontend.resources | object | `{}` |  |
| frontend.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| frontend.securityContext.runAsNonRoot | bool | `true` |  |
| frontend.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| frontend.service.annotations | object | `{}` |  |
| frontend.service.enabled | bool | `true` |  |
| frontend.service.externalIPs | list | `[]` |  |
| frontend.service.externalTrafficPolicy | string | `""` |  |
| frontend.service.healthCheckNodePort | int | `0` |  |
| frontend.service.labels | object | `{}` |  |
| frontend.service.loadBalancerIP | string | `""` |  |
| frontend.service.loadBalancerSourceRanges | list | `[]` |  |
| frontend.service.omitClusterIP | bool | `false` |  |
| frontend.service.sessionAffinity | string | `""` |  |
| frontend.service.tcpPort | int | `8080` |  |
| frontend.strategyType | string | `"Recreate"` |  |
| frontend.tolerations | list | `[]` |  |
| mariadb.auth.database | string | `"mempool"` |  |
| mariadb.auth.password | string | `"mempool"` |  |
| mariadb.auth.rootPassword | string | `"admin"` |  |
| mariadb.auth.username | string | `"mempool"` |  |
| mariadb.primary.persistence.enabled | bool | `false` |  |
| mariadb.primary.persistence.size | string | `"8Gi"` |  |
| replicaCount | int | `1` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `nil` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.13.1](https://github.com/norwoodj/helm-docs/releases/v1.13.1)
