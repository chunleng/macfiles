# Macfiles

## Capturing new config

Not all mac defaults command is searchable online, therefore we will need a way
to more easily identify settings.

The following procedure allows for new `defaults` to be discovered

```bash
defaults read > before
# Change config manually
diff -u before <(defaults read)
```

## Note

MacOS also frequently read/write to defaults, so sometimes other settings might
appear in the diff
