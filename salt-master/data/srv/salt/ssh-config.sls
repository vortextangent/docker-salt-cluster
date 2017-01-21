Place managed ssh config:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://ssh/sshd_config
