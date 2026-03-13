import os
import platform
from pathlib import Path


import nox

from exasol.slc_ci_setup.nox.tasks import *

ROOT = Path(__file__).parent


# default actions to be run if nothing is explicitly specified with the -s option
nox.options.sessions = []


@nox.session(name="detect-platform", python=False)
def detect_platform(session: nox.Session):
    """
    Detects the platform of the current runner and sets it as a GitHub Actions output.
    Only temporary solution until https://github.com/exasol/script-languages-container-ci/issues/140 is available.
    """
    machine = platform.machine()

    github_output = os.getenv("GITHUB_OUTPUT")
    if github_output:
        with open(github_output, "a") as f:
            f.write(f"platform_machine={machine}\n")