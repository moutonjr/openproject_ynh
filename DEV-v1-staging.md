# What it takes to go to v1

Package will be in v1 and in "working" conditions in Yunohost-Apps when:

- [x] All codes will be finished
- [x] First bash review performed
- [x] Reviewed with package-linter
- [ ] Remove all the TODOs
- [ ] CI tested on vagrant : install
- [ ] Remove tested : nothing must be left
- [ ] Quiet-ize installer
- [ ] Measure timing of installer to bring proper weight

And some breadcrumbs:
- [ ] change way to install ruby with crappy `rbenv`
- [ ] Remove: if the PostgreSQL is empty, remove it
- [ ] fully remove `/var/$app` (ynh helper crappy?)

Goal of full-quality :)
