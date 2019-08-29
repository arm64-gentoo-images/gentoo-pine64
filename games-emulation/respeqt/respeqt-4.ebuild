EAPI=7

DESCRIPTION="RespeQt, Atari Serial Peripheral Emulator for Qt"
LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86 ~amd64-fbsd"

inherit git-r3 qmake-utils
EGIT_REPO_URI="https://github.com/jzatarski/RespeQT.git"
EGIT_COMMIT="r4"

DEPEND="
	dev-qt/qtprintsupport:5
	dev-qt/qtserialport:5
"

RDEPEND="${DEPEND}"

src_compile() {
	eqmake5
	emake
}

src_install() {
	emake DESTDIR="${D}" install
}
