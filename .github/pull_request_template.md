### All Submissions:

* [ ] Check if your pull request goes to the correct bash branch (develop or master)?
* [ ] Is the title of the Pull Request correct?
* [ ] Is the title of the corresponding issue correct?
* [ ] Have you updated the changelog?
* [ ] Have you checked to ensure there aren't other open [Pull Requests](../../../../pulls) for the same update/change? <!-- markdown-link-check-disable-line --> 
* [ ] Are you mentioning the issue which this PullRequest fixes ("Fixes...")

<!-- You can erase any parts of this template not applicable to your Pull Request. -->

### When integrating to Develop branch:

1. [ ] Remember to merge with "Squash and Merge"

### When integrating to Main branch:

1. [ ] Remember to merge with "Merge"
2. [ ] Have you thought about version number? If there is a breaking change in the toolchain, need to update major version.
3. [ ] If you plan a release, have you checked the Exasol packages for updates?
   1. Websocket API (https://github.com/EXASOL/websocket-api)
   2. [Exasol-BucketFS](https://pypi.org/project/exasol-bucketfs/)
