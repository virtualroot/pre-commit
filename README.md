# pre-commit
![tests](https://github.com/virtualroot/pre-commit/workflows/tests/badge.svg)

> Operative system agnostic hooks

## Using pre-commit-hooks

Install [pre-commit](https://pre-commit.com/#installation) and add this to your `.pre-commit-config.yaml`

```yaml
-   repo: https://github.com/virtualroot/pre-commit
    rev: v... # Check latest version in Releases
    hooks:
    -   id: dockerfile-lint
    # -   id: ...
```
## Hooks available

### `dockerfile-lint`
Lint Dockerfiles with [hadolint](https://github.com/hadolint/hadolint).

### `golang-staticcheck`
Ling golang files with [staticcheck](https://staticcheck.io/).

### `golang-golint`
Lint golang files with [golint](https://github.com/golang/lint/).

## Add a new hook

* Add linter tool in Dockerfile
* Add hook following `language-linter_name` naming scheme
* Rebuild Docker images with `docker build -t virtualroot/pre-commit:latest .`
* Test your hook with `pre-commit try-repo . language-linter_name --files foobar`
* Add test and fixtures

## License

[MIT](https://tldrlegal.com/license/mit-license)
