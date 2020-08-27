## Installing MongoDB

To install mongodb on your current namespace:

```bash
$ helm template -f mongodb/values.yaml mongodb | oc apply -f-
```
The above command deploys mongodb on a cluster in the default configuration. The [configuration](#configuration) section lists the parameters that can be configured during installation.


## Configuration
The following table lists the configurable parameters of the mongodb chart and their default values.

| Parameter                                        | Description                                                                 | Default                                              |
| ------------------------------------------------ | --------------------------------------------------------------------------- | ---------------------------------------------------- |
| `persistent`                                          | Toggle to set PVC creation on/ off                                                     | `false`                                               |
| `storage`                             | Size of the PV to use                                                | `1Gi`                                           |
| `image`                         | MongoDB image to pull from openshift namespace                                                 | `mongodb:3.6`                                             |
| `database.name`                         | MongoDB collection to create                                                 | `profiles`                                             |
| `database.password`                         | MongoDB password to set                                                 | `pAssw0rd`                                             |
| `database.adminPassword`                         | MongoDB password to set                                                 | `pAssw0rd`                                             |
| `database.user`                         | MongoDB username                                                 | `lxp`                                             |

### Persistence
If you want to set your mongodb as ephemeral, you should either remove the persistence [block](https://github.com/rht-labs/helm-charts/blob/master/charts/mongodb/values.yaml#L55) from your values file or set persistent value as below during the installation:

```bash
$ helm template --set persistence='' -f mongodb/values.yaml mongodb | oc apply -f-
```
