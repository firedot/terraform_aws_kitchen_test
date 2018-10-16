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

## The following steps are valid for MacOS users
 
 * Install and fine tune rbenv by running the following commands
   
```
which rbenv || brew install rbenv

grep ".rbenv" ~/.bash_profile || {
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' | tee -a ~/.bash_profile
}

source ~/.bash_profile

rbenv init
```
 * Install ruby version 2.3.1 with rbenv by running the following commands

```
rbenv versions | grep 2.3.1 || rbenv install 2.3.1

rbenv local 2.3.1

```

 * Install bundler
 
 ```
 gem install bundler
 ```
 * Run the following command: 
 
 ```
 # This will install all gems described in the Gemfile
 
 bundle install
 ```

## How to test: 

1. Clone this repo: 

```
git clone https://github.com/firedot/terraform_aws_kitchen_test.git
```

2. Go in the cloned repo dir: 

```
cd terraform_aws_kitchen_test
```

3. Run the following command: 

```
bundle exec kitchen test
```
