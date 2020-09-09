# Create and configure a Digital Ocean droplet with terraform and ansible


Add a environment variable to configure the Digital Ocean API key:


`
export DO_API_TOKEN={the api token received from digital ocean}
`


To build the terraform plan run;

`
terraform plan -var "do_api_token=${DO_API_TOKEN}"
`

To apply run

`
terraform apply -var "do_api_token=${DO_API_TOKEN}"
`

To destroy 

`
terraform destroy -var "do_api_token=${DO_API_TOKEN}"
`

Reference article:

https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean

https://www.ottorask.com/blog/digitalocean-automation-with-terraform-and-ansible/
