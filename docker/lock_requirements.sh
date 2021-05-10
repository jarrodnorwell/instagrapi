#!/usr/bin/env bash

pip uninstall -y -r <(pip freeze)
pip install -r requirements.txt
printf "# THIS IS AN AUTOGENERATED LOCKFILE. DO NOT EDIT MANUALLY.\n" > requirements.lock
pip freeze --disable-pip-version-check --all >> requirements.lock

echo "Rebuild containers to verify there are no conflicts."