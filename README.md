# hello_http HW &
Hello world with a webserver in C


## How to build
1. Use this, $ git clone https://github.com/clanda20/Homework-7-Move-to-k8s all the needed files are there.
2. sing your credentials login your AWS access portal URL: https://d-xxxxx.awsapps.com/start/
3. Once login go click on "Command line or programming access" on the AdminstrarorAccess page and copy your credential. Follow instructions there.
4. Paste the credentials on your terminal.
5. Now back into the AdministrorAccess page and now click on "Management console" and go to Amazon Elastic Container Registry -> Rpositories -> Create respository. Follow instructions.
Copy and Paste in the terminal your URI id that looks similar to this: 'xxxxxxx7424316.dkr.ecr.us-east-2.amazonaws.com/devop2'

6.  Initialize Terraform:  $ Terraform init
7.  Run: $ Terraform Plan  (Terraform used the selected providers to generate the execution plan)
8.  Run: $ Terraform Apply
9.  Type in: "Yes"  when asked to "Enter Value: "  (Terraform  performs the actions described above. Only 'yes' will be accepted to approve.)`
10.  Type this command to update thee kuberconfig for kubecontrol: `aws eks --region $(terraform output -raw region) update-kubeconfig  --name $(terraform output -raw cluster_name)`
11.  type in: ' kubectlc cluster-info to check if the core is running.
12. type in: kubectlc get nodes to see the nodes and its respective versions. 
13. type in: kubectlc get deployments  to check if it is ready and available.
14. type in: kubectlc get services  to check the available services. Copy the url that looks like this to your browser xxxxxxxx549dfb4acb5b934f5be4-7xxxxx.us-east-2.elb.amazonaws.com:8080
15.  You should see "Hello World" in your broser
16.  Once you finish: Delete and stop the container by typing in 'terraform destroy'
