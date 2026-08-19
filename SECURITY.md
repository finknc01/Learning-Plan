# Security and Confidentiality

This is a public learning and portfolio repository.

## Do not commit

- passwords, API keys, tokens, certificates, or private keys
- `.env` files containing real secrets
- employer- or customer-confidential information
- internal hostnames, IP addressing, network diagrams, rack layouts, asset identifiers, or credentials from production environments
- proprietary procedures, screenshots, logs, tickets, or configuration files from an employer
- personally identifiable or regulated data

## Safe documentation practice

When documenting professional experience, recreate examples in the lab using synthetic names, addresses, diagrams, configurations, and data. Describe the engineering principle or troubleshooting method without exposing protected details.

Before publishing screenshots, logs, command output, or configuration files, review them for usernames, hostnames, IP addresses, serial numbers, tokens, filesystem paths, and other identifying information.

## If a secret is committed

Treat it as compromised. Revoke or rotate it immediately; removing it from the latest commit is not sufficient by itself because Git history may retain the value.
