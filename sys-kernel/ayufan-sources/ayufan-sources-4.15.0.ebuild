# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

ETYPE=sources
K_DEFCONFIG="rockchip_linux_defconfig"
K_SECURITY_UNSUPPORTED=1
EXTRAVERSION="-${PN}/-*"
inherit kernel-2
detect_version
detect_arch

inherit git-2 versionator
EGIT_REPO_URI=https://github.com/ayufan-rock64/linux-mainline-kernel.git
EGIT_PROJECT="linux-mainline-kernel.git"
EGIT_BRANCH="master"

DESCRIPTION="Rock64 kernel sources"
HOMEPAGE="https://github.com/ayufan-rock64/linux-mainline-kernel"

KEYWORDS=""

src_unpack() {
        git-2_src_unpack
        unpack_set_extraversion
}

