# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/) and this
project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

### Fixed

- Wrong path to user's config in the startup script [#12]
- bitnami-jenkins-2-138-2-0-linux-debian-9-x86-64 image is not found [#12]

### Added

- Privet IP support (added `jenkins_instance_private`, `jenkins_workers_private` flags) [#14]
- Standardize integration testing [#12]
- Added support for Terraform 0.12 [#12]
- Added symlink for integration tests [#5]
- Removed openssh version from Dockerfile [#5]
- Added test/ci_integration.sh file to test/ directory [#5]
- Makefile changed to standard one [#5]

### Changed

## [v0.1.0] - 2018-12-20

### Added

* Initial release of module

[Unreleased]: https://github.com/terraform-google-modules/terraform-google-jenkins/compare/v0.1.0...HEAD
[v0.1.0]: https://github.com/terraform-google-modules/terraform-google-jenkins/releases/tag/v0.1.0

[#5]: https://github.com/terraform-google-modules/terraform-google-jenkins/pull/5
[#12]: https://github.com/terraform-google-modules/terraform-google-jenkins/pull/12
