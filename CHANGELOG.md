## [1.5.1](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/compare/v1.5.0...v1.5.1) (2026-07-29)


### Bug Fixes

* Merge pull request [#14](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/issues/14) from ZhangMaKe/fix/remove-unneeded-lambda_exec_role_arn-var ([e2bdb77](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/e2bdb77aa3be561329b00baa4d3a4f1a77031606))
* removed lambda_exec_role_arn var ([8e58260](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/8e582608776fe5ec9facaeb5f7603b44395401fb))

# [1.5.0](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/compare/v1.4.0...v1.5.0) (2026-07-29)


### Features

* Added support for creating IAM role, and a set of IAM policies for the Lambda function. ([575f058](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/575f05811cd74b2e0c4d5346ba59135608c3e062))
* Merge pull request [#13](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/issues/13) from ZhangMaKe/feat/allow-creation-of-iam-role-and-policies ([b6a2b54](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/b6a2b5461b4e08dd3fbb29f7e25009d08af7fd1a))

# [1.4.0](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/compare/v1.3.3...v1.4.0) (2026-04-28)


### Features

* incremented lambda module version, introduced include_lambda_log_group var, updated docs ([a728103](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/a728103b0befdeb9bc26c62ec2c02585b533ab60))
* Merge pull request [#12](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/issues/12) from ZhangMaKe/feature/use-new-version-of-lambda-module ([e31044a](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/e31044ae301b839c6faf888dc5615b95543f7b59))

## [1.3.3](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/compare/v1.3.2...v1.3.3) (2025-07-13)


### Bug Fixes

* validation condition for authorisation type ([f356308](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/f356308213cd113a5c56ee2cf710266067508fee))
* validation condition ref to var for authorisation type ([d0dcc33](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/d0dcc33a9773398ba736494a04d6c18f22b4f938))

## [1.2.2](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/compare/v1.2.1...v1.2.2) (2025-06-25)


### Bug Fixes

* reverse ternary logic ([f501d6f](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/f501d6f1513f2d1b7856af1085386f6747614bbf))

## [1.2.1](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/compare/v1.2.0...v1.2.1) (2025-06-24)


### Bug Fixes

* updated condition expression that determines whether auth should be applied ([485b638](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/485b638f353f09a72985804a6975805f635369c6))

# [1.2.0](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/compare/v1.1.2...v1.2.0) (2025-06-24)


### Features

* added option for api route authoriser ([698d0d2](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/698d0d23202894e3bdca29bd9c7ebebb448c0443))

## [1.1.2](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/compare/v1.1.1...v1.1.2) (2025-06-02)


### Bug Fixes

* Merge pull request [#4](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/issues/4) from ZhangMaKe/feature/add-badge ([d4275fb](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/d4275fbbc9c3772b73e24a88aa214f0f43de0ed8))

## [1.1.1](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/compare/v1.1.0...v1.1.1) (2025-06-01)


### Bug Fixes

* Merge pull request [#3](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/issues/3) from ZhangMaKe/fix/fix-output-references ([699579d](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/699579dd5f355bb07ded425a019369527df00046))

# [1.1.0](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/compare/v1.0.0...v1.1.0) (2025-06-01)


### Features

* added outputs and updated readme ([540055e](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/540055ebcb78f09a739db9bfe279fb28e519d47b))

# 1.0.0 (2025-06-01)


### Bug Fixes

* added trivy ignore and ignored lack of tracing for lambda functions ([e996c1b](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/e996c1bc1c8c14c42b28f2c17deb2a9281a2faeb))


### Features

* initial ([6855c4a](https://github.com/ZhangMaKe/tf-module-lambda-api-endpoint/commit/6855c4af3df323e20fd800f40c10d272605f20fb))
