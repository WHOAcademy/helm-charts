# Backup Runner template

Template for deploying a backup container as a cronjob in OpenShift

TODO:
- Use sealed-secrets to enable adding secrets required via helm template
- Add Jenkinsfile in order to add this application to a pipeline build.
- Possible desire for other parts of the chart to be customized.
- Work on backup script itself - currently encryption appears to be one way - unable to decrypt with password successfully outside of the container.

