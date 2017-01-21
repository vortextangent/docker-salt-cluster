include:
  - ssh-install
  - ssh-config

Make sure the ssh service is installed, configured and running:
  pkg.installed:
    - name: ssh
  service.running:
    - name: ssh