@ECHO Off 
:: Creating PODS and Services
cd /d "c:\Users\10661638"
Title Pod Creation 
ECHO Please Wait... Creating Pod
ECHO==================================
ECHO POD Creation Going on
ECHO==================================
kubectl run --generator=run-pod/v1 node-red-workbench-pod-runtime --image=nodered/node-red 
ECHO==================================
ECHO Get POD Detail
ECHO==================================
kubectl describe pod node-red-workbench-pod-runtime 
ECHO==================================
ECHO Expose POD As a Service
ECHO==================================
kubectl expose pod node-red-workbench-pod-runtime  --type=LoadBalancer --port=80 --target-port=1880
ECHO Get POD Detail
ECHO==================================
kubectl describe Services node-red-workbench-pod-runtime 
ECHO==================================
PAUSE