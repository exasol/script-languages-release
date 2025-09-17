from pathlib import Path
from enum import Enum
import argparse
import re
from argparse import ArgumentParser

import nox

from exasol.slc_ci_setup.nox.tasks import *

ROOT = Path(__file__).parent


# default actions to be run if nothing is explicitly specified with the -s option
nox.options.sessions = []

class TestSet(Enum):
    GPU_ONLY = "gpu-only"
    DEFAULT = "default"

@nox.session(name="fix-relative-link", python=False)
def fix_relative_link(session: nox.Session):
    """
    Replaces the relative links in Readme.md with absolute links wrt master branch
    """
    p = ArgumentParser(
        usage='nox -s fix-relative-link -- --readme-ver version',
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )
    p.add_argument("--readme-ver")
    args = p.parse_args(session.posargs)
    readme_ver = getattr(args, "readme_ver")
    pack_diff_file = "https://github.com/exasol/script-languages-release/blob/master/doc/changes/package_diffs/" \
                    + readme_ver + "/README.md"
    
    link_pattern = r"\[([^\]]+)\]\(([^)]+)\)"
    rel_link_file = Path(f"./doc/changes/changes_{readme_ver}.md")
    rel_cntnt = rel_link_file.read_text()
    abs_cntnt = re.sub(link_pattern, r"[\1](" + pack_diff_file + ")", rel_cntnt)
    with open(rel_link_file, "w") as abs_link_file:
        abs_link_file.write(abs_cntnt)
