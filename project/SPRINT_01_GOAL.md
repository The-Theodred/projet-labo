# Sprint 1 – Goal (Prototype de base)

Avoir un **prototype automatisé** qui, après raccordement d’1 switch, 1 routeur et 1 serveur :
1. Configure le réseau de base (VLAN mgmt, NTP, syslog) via Ansible.
2. Installe et configure **Proxmox** sur le serveur.
3. Crée **3 VMs** : DHCP, DNS, Apache (service répondant).
4. Expose des métriques/alertes minimales (ping + CPU/RAM) et une sauvegarde de conf switch.

## Critères d'acceptation (tests)
- `ansible-playbook provision.yml --check` passe sans erreur.
- Switch atteint sur IP mgmt, VLANs présents.
- Proxmox accessible via UI ; stockage OK.
- `nslookup` répond depuis la VM DNS ; DHCP délivre une IP sur Vlan labo ; `curl` vers Apache renvoie 200.
- Dashboard de base visible ; backup de conf switch restaurable.
