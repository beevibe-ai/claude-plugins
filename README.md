# Beevibe Claude Plugins

Small Claude Code plugin marketplace for Beevibe.

## Install

```bash
claude plugin marketplace add beevibe-ai/claude-plugins
claude plugin install crystal@beevibe
```

Then start Beevibe Crystal from the Beevibe repo:

```bash
pnpm crystal:dev
```

Inside any Claude Code session:

```text
/crystal:publish
```

## Plugins

- `crystal` - publish the current Claude Code session as a shareable,
  queryable Beevibe Crystal capsule.
- `adr` - Architecture Deep Research, distributed from
  `beevibe-ai/architecture-deep-research`.

## Source Of Truth

The Crystal plugin is mirrored from:

```text
beevibe-ai/beevibe/packages/beevibe-crystal/plugin
```

Use `scripts/sync-crystal.sh` from a local Beevibe checkout to refresh this
marketplace copy before publishing plugin updates.
