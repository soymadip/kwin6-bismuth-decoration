# SPDX-FileCopyrightText: 2022 Mikhail Zolotukhin <mail@gikari.com>
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.16)

project(bismuth-kdecoration)

add_library(bismuth_kdecoration MODULE)

target_sources(bismuth_kdecoration PRIVATE decoration.cpp decoration.hpp)

target_link_libraries(
  bismuth_kdecoration
  PUBLIC Qt::Core
  PRIVATE KDecoration2::KDecoration KF6::ConfigCore KF6::ConfigWidgets KF6::CoreAddons)

install(TARGETS bismuth_kdecoration
        DESTINATION ${KDE_INSTALL_PLUGINDIR}/org.kde.kdecoration2)
