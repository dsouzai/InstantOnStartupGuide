# InstantOnStartupGuide

Setup scripts to get started with InstantOn


# Quick Start

Create checkpoint image:
```
bash ./Scripts/privileged/build.sh
```

Run restore container:
```
bash ./Scripts/privileged/restoreContainer.sh
```

# Notes

The deployment yaml files in in `YAMLs/common` need to be
updated to have the restore image name.
