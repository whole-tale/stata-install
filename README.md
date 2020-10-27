# Whole Tale STATA installation

This repo can be used to build the `stata-install` image used
by the Whole Tale `repo2docker_wholetale` StataBuildPack.

Installing Stata requires access to the Stata installation media
as well as a valid license key, both of which must be obtained 
from STATA. The Linux installation process is interactive and
could possibly be scripted (e.g., via expect). However, for our
purposes the installation process can me completed and the resulting
installed directory copied for Docker image creation.

Build steps:
* Obtain license key
* Download installation media, 
* Clone this repo
* Manually install to temporary Docker image
* Copy installation files
* Build image

### Obtain license key

Whole Tale uses licenses provided by STATA Corp for use in the platform
only. Development licenses are also available. These are available
in an email.

## Download installation media

Installation media must be downloaded from STATA Corp. Download
information is provided in an email.

### Clone this repo

```
git clone https://github.com/whole-tale/stata-install
cd stata-install
```

## Manually install

Follow the installation documentation for the selected version
to install STATA to a temporary Docker container. Create a tar.gz 
file and copy the archive to the cloned directory.

### Build the image

```
docker build -t stata-install:16 .
```

For production installations, push the image to the local registry:
```
docker push registry.wholetale.org/stata-install:16
```

