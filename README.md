# iaac
Infrastructure As A Code projects

Testing a Devops Approach with Ansible: Deploy servers + workload on 4 local VM with Internet connection.

  - OS Ubuntu 20.04 'Focal Fossa'

  - Local VM servers - Group: Servers    - OpenSSH + UFW Firewall + Net tools + Nmap + Nano
    - LABSRV01 - Group: Build            - Ansible + Ansible-Lint
    - LABSRV02 - Group: Web Server QAL   - Apache + Maria DB + PHP
    - LABSRV03 - Group: Web Server PROD  - Apache + Maria DB + PHP
    - LABSRV04 - Group: Monitor          - Prometheus + Graphana

  - Deploy Ansible and Jenkins
  - Deploy Web servers QAL and Prod
    - Deploy a functional web site with Jenkins integration deploying in QAL and then in production from a GitHub Repository
  - Deploy Monitoring 
   
   
  Cheers
  Fred
