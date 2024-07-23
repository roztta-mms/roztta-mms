name        = "{{ .Name }}"
description = "{{ .Description }}"
id          = "{{ .ID }}"

tags = {
{{ range $key, $value := .Tags }}
  {{ $key }} = "{{ $value }}"
{{ end }}
}
