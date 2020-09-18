{{/* Create a name for our backup job */}}
{{- define "backup-runner.name" -}}
{{- default "backup-runner" -}}
{{- end -}}

{{/* Create our default image repository location if not defined */}}
{{- define "backup-runner.repo" -}}
{{- default (printf "image-registry.openshift-image-registry.svc:5000/%s/backup-runner" .Release.Namespace) -}}
{{- end -}}