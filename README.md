# Bitcoin Helm Charts

![License](https://img.shields.io/badge/license-Apache%202.0-blue)

## Introduction

Welcome to `bitcoin-helm-charts`, a curated repository hosting a collection of Helm charts to streamline the deployment and management of Bitcoin and Lightning network stacks. These charts aim to assist anyone running a Kubernetes environment to easily deploy and integrate components that make up a Bitcoin infrastructure.

## Features

- **Comprehensive Collection**: Helm charts for widely-used Bitcoin and Lightning network applications including Bitcoind, Lightning, BTCPayServer, and more.
- **Easy Integration**: Simplify the deployment of Bitcoin infrastructure on Kubernetes platforms.
- **Community-Centric**: Collaboratively built with the objective to foster innovation and growth within the Bitcoin community.

## Installation

To use the charts from this repository, execute the following commands:
```sh
helm repo add bitcoin-helm https://bitcoin-helm.genesisplatformstack.org
helm repo update
```

To install a chart. Example:
```sh
helm upgrade --install bitcoind bitcoin-helm/bitcoind --values ~/fulcrum-helm-overrides.yaml --namespace bitcoin
```

## Usage

Detailed usage instructions for each chart can be found in the respective chart's README file within the repository.

## Contributing

We encourage community contributions to help evolve and enrich this project. Please refer to the CONTRIBUTING.md file for guidelines on how to contribute.

## License

This project is licensed under the Apache License 2.0 - see the LICENSE file for details. This license was chosen to offer robust protection for contributors and to foster open and collaborative development.
