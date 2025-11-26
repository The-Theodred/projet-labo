# Runbook – Bring-up du prototype

1. **Pré-requis**
   - Accès console/SSH au switch/routeur/serveur
   - Inventaire IP/VLAN approuvé
   - Repo cloné, accès Vault

2. **Étapes**
   - `ansible-playbook playbooks/bootstrap.yml` (réseau + comptes + NTP/syslog)
   - Installer Proxmox (playbook) puis vérifier UI d'admin
   - `ansible-playbook playbooks/provision.yml` (VMs DHCP/DNS/Apache)

3. **Vérifications**
   - Ping mgmt, `show vlan`, logs reçus
   - UI Proxmox OK ; stockage/thin provision prêts
   - `ip a` sur VM DHCP/DNS/Apache ; tests `nslookup`, `dhclient`, `curl`

4. **Roll-back**
   - Restaurer conf switch depuis backup
   - Supprimer VMs via playbook tags `--tags cleanup`
