from pathlib import Path

from exasol.toolbox.config import BaseConfig

PROJECT_CONFIG = BaseConfig(
    project_name="slc_release",
    root_path=Path(__file__).parent,
    python_versions=("3.11", "3.12", "3.13"),
    exasol_versions=(),
)
