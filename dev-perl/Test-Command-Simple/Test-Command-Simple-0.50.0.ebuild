# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=DMCBRIDE
MODULE_VERSION=0.05

inherit perl-module

DESCRIPTION="Test external commands (nearly) as easily as loaded modules"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.420.0
	test? (
		virtual/perl-Test-Simple
	)
"

SRC_TEST="do parallel"

src_test() {
	perl_rm_files t/pod.t t/manifest.t t/pod-coverage.t
	perl-module_src_test
}
