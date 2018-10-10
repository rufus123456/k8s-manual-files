cd /root/k8s-manual-files
for NODE in k8s-m1 k8s-m2 k8s-m3; do
    echo "--- $NODE ---"
    ssh ${NODE} "mkdir -p /var/lib/kubelet /var/log/kubernetes /var/lib/etcd /etc/systemd/system/kubelet.service.d"
    scp master/var/lib/kubelet/config.yml ${NODE}:/var/lib/kubelet/config.yml
    scp master/systemd/kubelet.service ${NODE}:/lib/systemd/system/kubelet.service
    scp master/systemd/10-kubelet.conf ${NODE}:/etc/systemd/system/kubelet.service.d/10-kubelet.conf
  done
