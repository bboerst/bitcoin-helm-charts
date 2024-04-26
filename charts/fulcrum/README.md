# fulcrum

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.9.1](https://img.shields.io/badge/AppVersion-v1.9.1-informational?style=flat-square)

fulcrum helm chart

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| arguments[0] | string | `"/data/config.toml"` |  |
| config | string | `"# Example config: https://github.com/cculianu/Fulcrum/blob/master/doc/fulcrum-example-config.conf\ndatadir = /data\nbitcoind = bitcoind:8332\nrpcuser = fulcrum\nrpcpassword = hunter1\n#rpccookie = /authcookie/.cookie\n"` |  |
| cookiePersistence.enabled | bool | `false` |  |
| cookiePersistence.existingClaim | string | `"bitcoin-core-authcookie"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"cculianu/fulcrum"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.extraPaths | list | `[]` |  |
| ingress.hosts[0] | string | `"chart-example.local"` |  |
| ingress.labels | object | `{}` |  |
| ingress.path | string | `"/"` |  |
| ingress.pathType | string | `"Prefix"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.enabled | bool | `false` |  |
| persistence.size | string | `"5Gi"` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.enableRpc | bool | `true` |  |
| service.enabled | bool | `true` |  |
| service.externalIPs | list | `[]` |  |
| service.externalTrafficPolicy | string | `""` |  |
| service.healthCheckNodePort | int | `0` |  |
| service.labels | object | `{}` |  |
| service.loadBalancerIP | string | `""` |  |
| service.loadBalancerSourceRanges | list | `[]` |  |
| service.nodePorts.rpc | string | `""` |  |
| service.nodePorts.tcp | object | `{}` |  |
| service.nodePorts.udp | object | `{}` |  |
| service.omitClusterIP | bool | `false` |  |
| service.ports.rpc | int | `50001` |  |
| service.ports.tcp | object | `{}` |  |
| service.ports.udp | object | `{}` |  |
| service.sessionAffinity | string | `""` |  |
| service.targetPorts.rpc | string | `"rpc"` |  |
| service.type | string | `"NodePort"` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `nil` |  |
| strategyType | string | `"Recreate"` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)