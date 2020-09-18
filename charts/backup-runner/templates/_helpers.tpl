{{/* Create a name for our backup job */}}
{{- define "backup-runner.name" -}}
{{- default "backup-runner" -}}
{{- end -}}