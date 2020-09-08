.PHONY: instaall
install:
	linkerd install | kubectl apply -f -
.PHONY: inject
inject:
	kubectl get -n emojivoto deploy -o yaml | linkerd inject - | kubectl apply -f -
