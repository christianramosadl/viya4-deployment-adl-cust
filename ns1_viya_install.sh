docker run --rm \
  --platform linux/x86_64 \
  --group-add root \
  --user $(id -u):$(id -g) \
  --volume $HOME/deployments:/data \
  --volume $HOME/deployments/adlcolredep-eks/adlns1/ansible-vars.yaml:/config/config \
  --volume $HOME/deployments/adlcolredep-eks/viya4-iac-aws-adl/terraform.tfstate:/config/tfstate \
  --volume $HOME/deployments/adlcolredep-eks/viya4-iac-aws-adl/.ssh/adl:/config/jump_svr_private_key \
  viya4-deployment-adl --tags "viya,install"
