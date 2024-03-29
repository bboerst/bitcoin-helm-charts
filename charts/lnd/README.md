# lnd

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![AppVersion: v0.17.0-beta](https://img.shields.io/badge/AppVersion-v0.17.0--beta-informational?style=flat-square)

A golang implementation of a Lightning Network node

**Homepage:** <https://github.com/lightningnetwork/lnd>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| autoUnlock | bool | `false` |  |
| autoUnlockPassword | string | `"password"` |  |
| command[0] | string | `"lnd"` |  |
| configurationFile."lnd.conf" | string | `"bitcoin.active=1\nbitcoin.mainnet=0\nbitcoin.testnet=1\ndebuglevel=info\nbitcoin.node=neutrino\nneutrino.addpeer=faucet.lightning.community\nneutrino.addpeer=lnd.bitrefill.com:18333\nrpclisten=0.0.0.0:10009\ntlsextradomain=nodes-lnd-internal.nodes\ntlsextradomain=lnd.example.com\ntlsextraip=0.0.0.0\nprotocol.wumbo-channels=1\nprometheus.enable=false\nprometheus.listen=0.0.0.0:8989"` |  |
| externalServices.p2pPort | int | `9735` |  |
| externalServices.type | string | `"LoadBalancer"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"lightninglabs/lnd"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.rest.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt-prod"` |  |
| ingress.rest.annotations."kubernetes.io/ingress.class" | string | `"nginx"` |  |
| ingress.rest.annotations."nginx.ingress.kubernetes.io/backend-protocol" | string | `"HTTPS"` |  |
| ingress.rest.annotations."nginx.ingress.kubernetes.io/enable-cors" | string | `"true"` |  |
| ingress.rest.enable | bool | `false` |  |
| ingress.rest.hosts[0].host | string | `"lnd.example.com"` |  |
| ingress.rest.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.rest.hosts[0].paths[0].port | int | `8080` |  |
| ingress.rest.tls[0].hosts[0] | string | `"lnd.example.com"` |  |
| ingress.rest.tls[0].secretName | string | `"lnd-tls-secret"` |  |
| ingress.rpc.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt-prod"` |  |
| ingress.rpc.annotations."kubernetes.io/ingress.class" | string | `"nginx"` |  |
| ingress.rpc.annotations."nginx.ingress.kubernetes.io/backend-protocol" | string | `"GRPCS"` |  |
| ingress.rpc.annotations."nginx.ingress.kubernetes.io/enable-cors" | string | `"true"` |  |
| ingress.rpc.enabled | bool | `false` |  |
| ingress.rpc.hosts[0].host | string | `"rpc.lnd.example.com"` |  |
| ingress.rpc.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.rpc.hosts[0].paths[0].port | int | `10009` |  |
| ingress.rpc.tls[0].hosts[0] | string | `"rpc.lnd.example.com"` |  |
| ingress.rpc.tls[0].secretName | string | `"lnd-rpc-tls-secret"` |  |
| internalServices.prometheusPort | int | `8989` |  |
| internalServices.restPort | int | `8080` |  |
| internalServices.rpcPort | int | `10009` |  |
| nameOverride | string | `""` |  |
| network | string | `"testnet"` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.enabled | bool | `false` |  |
| persistence.size | string | `"5Gi"` |  |
| podSecurityContext | object | `{}` |  |
| resources.limits.memory | string | `"512Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"512Mi"` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `nil` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
