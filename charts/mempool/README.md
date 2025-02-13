# mempool

![Version: 0.1.15](https://img.shields.io/badge/Version-0.1.15-informational?style=flat-square) ![AppVersion: v3.0.1](https://img.shields.io/badge/AppVersion-v3.0.1-informational?style=flat-square)

A Helm chart for mempool

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | mariadb | 20.2.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| backends[0].affinity | object | `{}` |  |
| backends[0].arguments | string | `nil` |  |
| backends[0].coreRpcHost | string | `"bitcoind"` |  |
| backends[0].coreRpcPassword | string | `""` |  |
| backends[0].coreRpcPort | int | `8332` |  |
| backends[0].coreRpcUsername | string | `"mempool"` |  |
| backends[0].env.BISQ_ENABLED | string | `"false"` |  |
| backends[0].env.LIGHTNING | string | `"false"` |  |
| backends[0].env.LIQUID_ENABLED | string | `"false"` |  |
| backends[0].env.MEMPOOL_POOLS_JSON_TREE_URL | string | `"https://api.github.com/repos/mempool/mining-pools/git/trees/master"` |  |
| backends[0].env.MEMPOOL_POOLS_JSON_URL | string | `"https://raw.githubusercontent.com/mempool/mining-pools/master/pools-v2.json"` |  |
| backends[0].envExternalSecretName | string | `""` |  |
| backends[0].fullnameOverride | string | `""` |  |
| backends[0].image.pullPolicy | string | `"IfNotPresent"` |  |
| backends[0].image.repository | string | `"mempool/backend"` |  |
| backends[0].image.tag | string | `"v3.0.1"` |  |
| backends[0].imagePullSecrets | list | `[]` |  |
| backends[0].mempoolBackend.type | string | `"none"` |  |
| backends[0].name | string | `"mainnet"` |  |
| backends[0].nameOverride | string | `""` |  |
| backends[0].nodeSelector | object | `{}` |  |
| backends[0].podSecurityContext | object | `{}` |  |
| backends[0].resources | object | `{}` |  |
| backends[0].securityContext.allowPrivilegeEscalation | bool | `false` |  |
| backends[0].securityContext.runAsNonRoot | bool | `true` |  |
| backends[0].securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| backends[0].service.annotations | object | `{}` |  |
| backends[0].service.enabled | bool | `true` |  |
| backends[0].service.externalIPs | list | `[]` |  |
| backends[0].service.externalTrafficPolicy | string | `""` |  |
| backends[0].service.healthCheckNodePort | int | `0` |  |
| backends[0].service.labels | object | `{}` |  |
| backends[0].service.loadBalancerIP | string | `""` |  |
| backends[0].service.loadBalancerSourceRanges | list | `[]` |  |
| backends[0].service.omitClusterIP | bool | `false` |  |
| backends[0].service.sessionAffinity | string | `""` |  |
| backends[0].service.tcpPort | int | `8999` |  |
| backends[0].statisticsEnabled | bool | `true` |  |
| backends[0].strategyType | string | `"Recreate"` |  |
| backends[0].tolerations | list | `[]` |  |
| frontend.affinity | object | `{}` |  |
| frontend.arguments | string | `nil` |  |
| frontend.env.BACKEND_MAINNET_HTTP_HOST | string | `"mempool-space-mainnet-backend-mainnet"` |  |
| frontend.fullnameOverride | string | `""` |  |
| frontend.image.pullPolicy | string | `"IfNotPresent"` |  |
| frontend.image.repository | string | `"mempool/frontend"` |  |
| frontend.image.tag | string | `"v3.0.1"` |  |
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
| mariadb.primary.resourcesPreset | string | `"small"` |  |
| replicaCount | int | `1` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `nil` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.13.1](https://github.com/norwoodj/helm-docs/releases/v1.13.1)
