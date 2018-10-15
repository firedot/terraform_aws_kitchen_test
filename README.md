# terraform_aws_kitchen_test
A kitchen test that checks an AWS VM for nginx

## Prerequisites: 

 * You should have terraform installed

 * Run the following commands: 
 
 ```
export TF_VAR_ami_id="<your_ami_id>"

export TF_VAR_aws_access_key="<your_aws_access_key>"

export TF_VAR_key_name="<your_aws_keyPair_name>"

export TF_VAR_aws_secret_key="<your_aws_secret_key>"

export TF_VAR_region_id="<your_aws_region>"
```

## How to test: 

1. Clone this repo: 

```
git clone 
```

2. Go in the cloned repo dir: 

```
cd 
```

3. Run the following command: 

```
bundle exec kitchen test
```
