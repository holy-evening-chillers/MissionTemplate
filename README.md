# MissionTemplate


## Template Bundler

To run the template bundler, you need a working python installation with >= python 3.8.0

there are no external dependencies, so you can just run the bundler from the root of the repository with:

```shell
# linux
python3 scripts/template_bundler.py
# windows
python scripts/template_bundler.py
```

this will create the template_bundles folder and put all the bundled templates in there.
it will look like this:

template_bundles/
├── Altis/
│   ├── mission_Altis.Altis/
│   ├── mission_Carrier-Altis.Altis
├── cam_lao_nam/
│   ├── mission_cam_lao_nam.cam_lao_nam/
.
.
.


