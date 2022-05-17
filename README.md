# Development Environment

This is a repository to make it easy to run services locally.

## Requirements

Install Tilt:

```sh
curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash
```
*For more details, see https://docs.tilt.dev/install.html*

Install the requirements bellow:

```sh
brew install jq
brew install --casks docker
```

## Run

*When you first run the command below, all repositories defined on services.json will be cloned in the same path as this current project.*

Execute the following command to starts tilt:

```sh
tilt up
```

Press "space" to open the development environment on your browser.
