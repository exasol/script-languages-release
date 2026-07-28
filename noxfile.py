import json
from pathlib import Path

from exasol.slc_ci_setup.nox.tasks import *

ROOT = Path(__file__).parent


# default actions to be run if nothing is explicitly specified with the -s option
nox.options.sessions = []


@nox.session(name="check-duplicate-aliases", python=False)
def check_duplicate_language_aliases(session: nox.Session):
    """
    Checks all standard language_definitions.json for duplicate aliases.
    Fails if an alias appears more than once.
    """
    alias_to_flavor: dict[str, str] = {}

    flavor_files = list((ROOT / "flavors").glob("standard-*/flavor_base/language_definitions.json"))

    if not flavor_files:
        session.error("No language_definitions.json found in any standard flavor.")

    SKIP_FLAVOR = "standard-EXASOL-all"
    for json_file in flavor_files:
        flavor_name = json_file.parts[-3]  # picks the flavor name
        if flavor_name == SKIP_FLAVOR:
            continue  # skip standard-EXASOL-all as it contains all aliases

        data = json.loads(json_file.read_text())
        for lang_def in data.get("language_definitions", []):
            for alias in lang_def.get("aliases", []):
                if alias in alias_to_flavor:
                    session.error(
                        f"Duplicate alias {alias!r} found in {flavor_name!r} "
                        f"(already defined in {alias_to_flavor[alias]!r})."
                    )
                alias_to_flavor[alias] = flavor_name

    session.log("No duplicate aliases found across standard flavors.")
