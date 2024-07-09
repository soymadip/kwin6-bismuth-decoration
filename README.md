<!--
  SPDX-FileCopyrightText: 2021-2022 Mikhail Zolotukhin <mail@gikari.com>
  SPDX-FileCopyrightText: 2018-2019 Eon S. Jeon <esjeon@hyunmu.am>
  SPDX-License-Identifier: MIT
-->

# Bismuth window decoration

This is just a port of Bismuth decoration for Plasma/KWin 6.

This is not the full Bismuth tiling manager script for KWin.

![demo](img/rice.png)


## Getting Started

### Requirements

- A Linux distribution with KDE Plasma version 6.1 or higher
- Qt version 6.5 or higher
- KDE Frameworks version 6.3 or higher

You can check if your system matches these requirements by going to System
Settings > About this System.

### Build instructions

You will need kwin/kdecoration development packages,
plus a regular C++ build environment -- cmake, gcc (or clang) and such.

This should be sufficient to compile and install the theme:

```
git clone https://github.com/ivan-cukic/kwin6-bismuth-decoration && cd kwin6-bismuth-decoration
bash install.sh
```

If you installed KDE Frameworks and Plasma into a different prefix,
replace `/usr` with your custom location.

If `cmake` reports an error, it most likely means that
you are missing one or more dependencies.





