# Infra Labo – Prototype Automatisé (Starter Kit)

Objectif : en branchant **un switch**, **un routeur** et **un serveur**, déclencher via Ansible
1) la configuration réseau de base (VLAN/IP/NTP/log),
2) l'installation/paramétrage **Proxmox**,
3) la création de **3 VMs** (DHCP, DNS, Apache) et leurs services,
4) la supervision et les sauvegardes minimales.

Tout changement passe par **PR + review**. Ce dépôt sert de source de vérité (infra-as-code + doc).

## Structure
- `ansible/` – inventaires, rôles, playbooks
- `project/` – gouvernance (DoD/DoR, sprint goals, kanban)
- `docs/` – communication, RACI, statuts, réunions
- `runbooks/` – procédures pas-à-pas
- `tasks/` – backlog CSV importable
- `.github/` – templates issues/PR + CI
- `scripts/` – utilitaires CI

## Démarrage rapide
- Lisez `docs/COMMUNICATION.md` et `project/KANBAN.md`.
- Créez une branche de feature à partir d'un **Issue**.
- Développez, testez, **ouvrez une PR** avec la checklist DoD.
- À la merge, la CI doit être **verte**.
