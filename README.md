# StashApp Plugins

Plugin source for StashApp plugins maintained by lucasnegrao.

## Install

Add this URL under **Settings → Plugins → Available Plugins → Add Source**:

```text
https://lucasnegrao.github.io/stashapp-plugins/main/index.yml
```

## Plugins

- [DupeFinder](https://github.com/lucasnegrao/stashapp-plugin-dupefinder-revamp)

Each plugin lives in its own repository and is included here as a Git
submodule. This keeps plugin repositories independently forkable while this
repository provides a single install source.

## Updating a plugin

After publishing changes in a plugin repository, update its pinned commit:

```bash
git submodule update --remote plugins/DupeFinder
git add plugins/DupeFinder
git commit -m "Update DupeFinder"
git push
```

Dependabot checks for new submodule commits and opens update pull requests
automatically.

## Development checkout

Clone the catalog and all plugins with:

```bash
git clone --recurse-submodules https://github.com/lucasnegrao/stashapp-plugins.git
```

This catalog is based on the official
[Stash plugin repository template](https://github.com/stashapp/plugins-repo-template).

## License

The catalog publishing infrastructure is licensed under
[AGPL-3.0](LICENCE). Individual plugins may declare their own licenses.
