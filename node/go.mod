module github.com/projectcalico/node

go 1.13

require (
	github.com/kelseyhightower/confd v0.0.0
	github.com/onsi/ginkgo v1.12.0
	github.com/onsi/gomega v1.9.0
	github.com/pkg/errors v0.9.1
	github.com/projectcalico/felix v0.0.0-20200723080606-57ca7aae25e1
	github.com/projectcalico/libcalico-go v1.7.2-0.20200722155955-02107623e057
	github.com/projectcalico/typha v0.7.3-0.20200722203859-5309010450e2
	github.com/sirupsen/logrus v1.4.2
	github.com/vishvananda/netlink v1.0.0
	golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e
	gopkg.in/fsnotify/fsnotify.v1 v1.4.7
	k8s.io/api v0.17.2
	k8s.io/apimachinery v0.17.2
	k8s.io/client-go v0.17.2
)

replace (
	github.com/kelseyhightower/confd => ../confd
	github.com/projectcalico/felix => ../felix
	github.com/projectcalico/libcalico-go => ../libcalico-go
	github.com/projectcalico/typha => ../typha

	github.com/sirupsen/logrus => github.com/projectcalico/logrus v1.0.4-calico

	k8s.io/api => k8s.io/api v0.17.2
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.17.2
	k8s.io/apimachinery => k8s.io/apimachinery v0.17.2
	k8s.io/apiserver => k8s.io/apiserver v0.17.2
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.17.2
	k8s.io/client-go => k8s.io/client-go v0.17.2
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.17.2
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.17.2
	k8s.io/code-generator => k8s.io/code-generator v0.17.2
	k8s.io/component-base => k8s.io/component-base v0.17.2
	k8s.io/cri-api => k8s.io/cri-api v0.17.2
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.17.2
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.17.2
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.17.2
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.17.2
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.17.2
	k8s.io/kubectl => k8s.io/kubectl v0.17.2
	k8s.io/kubelet => k8s.io/kubelet v0.17.2
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.17.2
	k8s.io/metrics => k8s.io/metrics v0.17.2
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.17.2
)
