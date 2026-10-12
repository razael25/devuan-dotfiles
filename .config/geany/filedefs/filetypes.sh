[build-menu]
# %f will be replaced by the complete filename
# Compile (F8) = lint with shellcheck; gcc format makes errors clickable
FT_00_LB=_Lint
FT_00_CM=shellcheck --format=gcc "%f"
FT_00_WD=
# Execute (F5) = run with bash, not dash (Debian's /bin/sh breaks bashisms)
EX_00_LB=_Execute
EX_00_CM=bash "%f"
EX_00_WD=
