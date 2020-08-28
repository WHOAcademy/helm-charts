## Installing Postgresql

To install Postgresql on your current namespace:

```bash
$ helm template -f Postgresql/values.yaml Postgresql | oc apply -f-
```
The above command deploys Postgresql on a cluster in the default configuration. The [configuration](#configuration) section lists the parameters that can be configured during installation.


## Configuration
The following table lists the configurable parameters of the Postgresql chart and their default values.

| Parameter                                        | Description                                                                 | Default                                              |
| ------------------------------------------------ | --------------------------------------------------------------------------- | ---------------------------------------------------- |
| `persistent`                                          | Toggle to set PVC creation on/ off                 | `false`                                               |
| `enabled`                                          | Toggle to enable/disable                                                      | `true`                                               |
| `accessmode`                                          | Access Mode                                                      | `ReadWriteOnce`                                               |
| `service.port`                                          | Service Port                                                   | `5432`                                               |
| `service.type`                                          | Service Type                                                   | `ClusterIP`                                               |
| `image.tag`                         | Postgresql image tag to pull from openshift namespace                                                 | `9.6`                |
| `storageClass`                         | Storage Class                                                 | ` `                |
| `size`                             | Size of the PV to use                                                | `5Gi`                                           |
| `database`                         | Postgresql database to create                                                 | `neverendingblog`                                             |
| `password`                         | Postgresql password to set                                                 | `balthazar`                                             |
| `username`                         | Postgresql username                                                 | `bastian`                                             |
| `annotations`                         | annotations                                                 | `{}`                                             |

### Persistence
If you want to set your Postgresql as ephemeral, you should either remove the persistence [block](https://github.com/rht-labs/helm-charts/blob/master/charts/Postgresql/values.yaml#L55) from your values file or set persistent value as below during the installation:

```bash
$ helm template --set persistence='' -f Postgresql/values.yaml Postgresql | oc apply -f-
```
