# snakedeploy-github-action
A github action for using snakedeploy


## Example usages

```yaml
- name: Update conda envs
  uses: snakemake/snakedeploy-github-action@v1
  with:
    subcommand: update-conda-envs
    args: workflow/envs/*.yaml

- name: Update conda envs and also create pinnings
  uses: snakemake/snakedeploy-github-action@v1
  with:
    subcommand: update-conda-envs
    args: workflow/envs/*.yaml --pin-envs

- name: Update pinnings
  uses: snakemake/snakedeploy-github-action@v1
  with:
    subcommand: pin-conda-envs
    args: workflow/envs/*.yaml
```

For automatically creating PRs from the changes, you can use

```yaml
- name: Create Pull Request
  uses: peter-evans/create-pull-request@v4
  with:
    branch: autobump/conda-envs
    title: "perf: autobump conda envs"
    # this needs a personal access token such that checks are triggered on the created PR, see https://github.com/peter-evans/create-pull-request/blob/main/docs/concepts-guidelines.md#triggering-further-workflow-runs
    token: ${secrets.GITHUB_PAT}
```