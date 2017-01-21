restore_ssh_config:
  local.state.highstate:
    - tgt: {{ data['id'] }}