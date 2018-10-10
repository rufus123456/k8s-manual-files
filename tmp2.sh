for NODE in k8s-m1 k8s-m2 k8s-m3; do
    ssh ${NODE} "systemctl enable kubelet.service && systemctl start kubelet.service"
  done
