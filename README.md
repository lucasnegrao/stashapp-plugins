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

## Plugin updates

The publishing workflow checks the tracked branch of every plugin hourly,
commits new submodule pointers, and republishes the source automatically.

To update immediately from a local catalog checkout, run:

```bash
./update_plugins.sh
git add plugins
git commit -m "Update plugins"
git push
```

The script updates every plugin to its configured branch and shows what
changed. It does not commit or push unless called by the publishing workflow
with `--commit`.

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
