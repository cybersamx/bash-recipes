# In-place File Edit

This recipe shows how we can edit the content of a file eg. change a line, remove a line, etc. This is useful for dynamically changing the content of a file.

## Notes

### BSD sed vs GNU sed

This recipe uses the `sed` command to edit a file in place. There are 2 versions of `sed`: BSD and GNU. MacOS uses the BSD version of `sed`, while Linux uses the GNU version.

### ANSI-C Quoting

In the recipe we use ANSI-C quote `$'\n'` to represent a newline character \n in the insertion of text before and after a matching line.

## References

[Differences between GNU sed and BSD/MacOS sed](https://stackoverflow.com/questions/24275070/sed-not-giving-me-correct-substitute-operation-for-newline-with-mac-difference)
