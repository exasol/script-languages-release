from typing import Dict

from exasol.slc.internal.tasks.build.docker_flavor_image_task import DockerFlavorAnalyzeImageTask


class AnalyzeUDFClientDeps(DockerFlavorAnalyzeImageTask):

    def get_build_step(self) -> str:
        return "udfclient_deps"

    def get_additional_build_directories_mapping(self) -> Dict[str, str]:
        return {"01_nodoc": "ext/01_nodoc","scripts": "ext/scripts"}

    def get_path_in_flavor(self):
        return "flavor_base"


class AnalyzeLanguageDeps(DockerFlavorAnalyzeImageTask):

    def get_build_step(self) -> str:
        return "language_deps"

    def get_additional_build_directories_mapping(self) -> Dict[str, str]:
        return {"scripts": "ext/scripts"}

    def requires_tasks(self):
        return {"udfclient_deps": AnalyzeUDFClientDeps}

    def get_path_in_flavor(self):
        return "flavor_base"


class AnalyzeBuildDeps(DockerFlavorAnalyzeImageTask):

    def get_build_step(self) -> str:
        return "build_deps"

    def get_additional_build_directories_mapping(self) -> Dict[str, str]:
        return {"01_nodoc": "ext/01_nodoc", "scripts": "ext/scripts"}

    def get_path_in_flavor(self):
        return "flavor_base"


class AnalyzeBuildRun(DockerFlavorAnalyzeImageTask):

    def get_build_step(self) -> str:
        return "build_run"

    def requires_tasks(self):
        return {"build_deps": AnalyzeBuildDeps,
                "language_deps": AnalyzeLanguageDeps}

    def get_additional_build_directories_mapping(self) -> Dict[str, str]:
        return {"exaudfclient": "exaudfclient"}

    def get_path_in_flavor(self):
        return "flavor_base"


class AnalyzeBaseTestDeps(DockerFlavorAnalyzeImageTask):

    def get_build_step(self) -> str:
        return "base_test_deps"

    def requires_tasks(self):
        return {"build_deps": AnalyzeBuildDeps}

    def get_path_in_flavor(self):
        return "flavor_base"


class AnalyzeBaseTestBuildRun(DockerFlavorAnalyzeImageTask):

    def get_build_step(self) -> str:
        return "base_test_build_run"

    def requires_tasks(self):
        return {"base_test_deps": AnalyzeBaseTestDeps,
                "language_deps": AnalyzeLanguageDeps}

    def get_additional_build_directories_mapping(self) -> Dict[str, str]:
        return {"exaudfclient": "exaudfclient", "emulator": "emulator"}

    def get_path_in_flavor(self):
        return "flavor_base"


class AnalyzeFlavorBaseDeps(DockerFlavorAnalyzeImageTask):

    def get_build_step(self) -> str:
        return "flavor_base_deps"

    def requires_tasks(self):
        return {"language_deps": AnalyzeLanguageDeps}

    def get_additional_build_directories_mapping(self):
        return {"01_nodoc": "ext/01_nodoc", "scripts": "ext/scripts"}

    def get_path_in_flavor(self):
        return "flavor_base"

class AnalyzeFlavorTestBuildRun(DockerFlavorAnalyzeImageTask):

    def get_build_step(self) -> str:
        return "flavor_test_build_run"

    def requires_tasks(self):
        return {"flavor_base_deps": AnalyzeFlavorBaseDeps,
                "base_test_build_run": AnalyzeBaseTestBuildRun}

    def get_path_in_flavor(self):
        return "flavor_base"


class AnalyzeRelease(DockerFlavorAnalyzeImageTask):
    def get_build_step(self) -> str:
        return "release"

    def requires_tasks(self):
        return {"flavor_base_deps": AnalyzeFlavorBaseDeps,
                "build_run": AnalyzeBuildRun,
                "language_deps": AnalyzeLanguageDeps}

    def get_path_in_flavor(self):
        return "flavor_base"

    def get_language_definition(self) -> str:
        return "language_definitions.json"


class SecurityScan(DockerFlavorAnalyzeImageTask):
    def get_build_step(self) -> str:
        return "security_scan"

    def requires_tasks(self):
        return {"release": AnalyzeRelease}

    def get_path_in_flavor(self):
        return "flavor_base"
