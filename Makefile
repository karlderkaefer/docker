build-%:
	$(MAKE) -C $* build

push-%:
	$(MAKE) -C $* push

build-aws-kubectl-helm:

push-aws-kubectl-helm:
