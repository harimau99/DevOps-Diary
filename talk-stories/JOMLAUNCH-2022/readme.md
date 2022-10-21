# Overview
I Terraform You! or basically i transform you is actually a tool in Infrastructure as a Code (IaaC ) called terraform. Which in many years back then, all infrastructure migration are mostly done with Linux Bash, PowerShell and etc or manually done. But, there is always has a short string on practising this. So in 2014, a team that work on opensource back by HashiCorp decided to make this tool to exist. With hoping to help you do migration easier or copy your environment 1 to 1 into new environment much faster, easier and ready. 

[AEIOU in Transformation](#aeiou-in-transformation) | [Terraform & Mechanics](#terraform-mechanics) | [Transforms !!!](#transforms) | [Q&A](#q-a) | [Contact](#contact)

## AEIOU in Transformation

Before we start to think about the transformation. Lets take alook on the basic attribute first.
The main attributes in transformation are:-
- Provisioning 
- Deployment
- Configuration 
- Orchestration

These main attributes is by far a common practise and it is required when we have a set of environment which we required to deliver either it for
infrastructure environment, application, and maintenance. 

The delivered item are in the probably fine in the past. As soon the complexity of building an applications it introduce issues towards scaling either in monetary perspective, resources, and underlying security. Which it has become an issue over the time.

With that in mind, the Infrastructure as Code (IaaC) is introduce. The purpose of IaaC,  is to help you in amplify and simplify in terms of process and reduce the management overhead.

So lets take alook on traditional practise that were done manually.

|   No   |   Activity   |            Activity Description            |              Cost            |
|--------|--------------|--------------------------------------------|------------------------------|
|   1    | Prep & Setup | Setup Server                               | Effort & Time                |
|   2    | Prep & Setup | Configuration Network                      | Effort & Time                |
|   3    | Prep & Setup | Create route / VPN                         | Effort & Time                |
|   4    | Prep & Setup | Install Software & Dependencies            | Effort & Time                |
|   5    | Prep & Setup | Configuration on Software/Apps             | Effort & Time                |
|   6    | Prep & Setup | Install Database                           | Effort & Time                |
|   7    | Prep & Setup | Configuration on DB / Replica              | Effort & Time                |
|   8    | Maintenance  | Update version Env/Software/App            | Effort & Time                |
|   9    | Maintenance  | DB backups / Updates / Redistribution      | Effort & Time                |
|   10   | Maintenance  | Recovering Applications                    | Effort & Time                |
|   11   | Maintenance  | Add or Recover Servers                     | Effort & Time                |
|   12   | Maintenance  | Multiple Environment                       | Effort & Time                |
|   13   | Maintenance  | Book Keeping & Decommissioned Resources    | Effort & Time                |


Which previously done by Server Administrator, or System Administrator. This activities are highly involve with human intervention. 

Which create a loophole :-
- Human error
- High human resources (human capital)
- High effort and time

With modern concept of administration. A DevOps lifecycle is introduced. The sole purpose are to automate all task end to end and repack the environment and applications so that software lifecycle are in seemless move.

[Go Top](#overview)

## Terraform & Mechanics
Terraform. Is an IaaC tool that allow you to automate or define & manage your infrastructure either in a platform base or services that run on top of the platform or on-premise.

Note: The Platform here is refer as Cloud Provider / Server Provider.

This tools is human readable to configure file, versioning, reuse and share. The consistent workflow to provision and manage is what makes it can go through software lifecyle smooth. It is OpenSource.

Terraform works on any platform or services with an accessible API. The following is the URL of the Documentation that you may find in Official Page

|     Description         |                                    URL                                    |
|-------------------------|---------------------------------------------------------------------------|
| Use Case                | [Click Here](https://www.terraform.io/intro/use-cases)                    |
| CLI                     | [Click Here](https://www.terraform.io/cli)                                |
| TF Tools                | [Click Here](https://www.terraform.io/docs/terraform-tools)               |
| Plugin Docs             | [Click Here](https://www.terraform.io/plugin)                             |
| CDK Docs                | [Click Here](https://www.terraform.io/cdktf)                              |
| Provider Docs           | [Click Here](https://www.terraform.io/language/providers)                 |
| Integration             | [Click Here](https://www.terraform.io/docs/partnerships)                  |

Note:
CDK = Cloud Development Kit

[Go Top](#overview)

Lets talkout about the workflow. There are 3 stages :

- **Write**: A step to define your desired resources either to manage or build, which may be across multiple cloud providers and services. 

|        Method            |        Description                             |        Example                                                         |
|--------------------------|------------------------------------------------|-----------------------|
| **Declarative Method**   | Declare and get result                         | "Hey i want to 1 clone server".</br> You will get 1 clone server    | 
| **Procedural/Imperative Method** | A step by step according to <br/> instructions | 1. Create a clone server <br/> 2. Assign Firewall <br/> 3. Assign Groups <br/> 4. Destroy the old one |

For example, you might create a configuration to deploy an application on virtual machines in a Virtual Private Cloud (VPC) network with security groups and a load balancer.

- **Plan**: Terraform creates an execution plan describing the infrastructure it will create, update, or destroy based on the existing infrastructure and your configuration.

- **Apply**: On approval, Terraform performs the proposed operations in the correct order, respecting any resource dependencies. 

For example, if you update the properties of a VPC and change the number of virtual machines in that VPC, Terraform will recreate the VPC before scaling the virtual machines.


### Others tools
Similarities and differentiation

| Other IaaC (Ansible, Chef, Puppets)    |   Terraform   |
| --- | --- |  
| Provisioning, Configuration Management, Manage Infrastructure | Provisioning, Configuration Management, Manage Infrastructure |  
| Mainly a configuration tools<br><br>- Configure Infra<br>- Configuration management for deploying and apps<br>- configure to install, and update softeware/dependencies | Mainly infrastructure provisioning tools<br><br>- Deploy and configure env, software, and app. |
| Mature | Dynamically change | 
| Stagnant | More Advanced Orchestration | 
| Good for config management | Good for Orchestration |

[Go Top](#overview)

## Transforms !!!

### main.tf

<img style="width: 50%; height: 50%;z-index: 1nvh" src="https://github.com/harimau99/DevOps-Diary/blob/master/talk-stories/JOMLAUNCH-2022/img/main-tf_01.png?raw=true">


<img style="width: 50%; height: 50%;z-index: 1nvh" src="https://github.com/harimau99/DevOps-Diary/blob/master/talk-stories/JOMLAUNCH-2022/img/main-tf_02.png?raw=true">

### ss-clone.tf

<img style="width: 50%; height: 50%;z-index: 1nvh" src="https://github.com/harimau99/DevOps-Diary/blob/master/talk-stories/JOMLAUNCH-2022/img/ss-clone_01.png?raw=true">

<img style="width: 50%; height: 50%;z-index: 1nvh" src="https://github.com/harimau99/DevOps-Diary/blob/master/talk-stories/JOMLAUNCH-2022/img/ss-clone_02.png?raw=true">



### cred.auto.tfvars

<img style="width: 50%; height: 50%;z-index: 1nvh" src="https://github.com/harimau99/DevOps-Diary/blob/master/talk-stories/JOMLAUNCH-2022/img/cred.auto-tf.png?raw=true">

    Disclaimer: This practices are not recommend to put in the production environment. Therefore, it is advisable to use something like.

    AWS : AWS secrets <br/>
    GCP : GCP Cloud Key Management <br/>
    Azure: Azure Key Vault <br/>
    Others Hashicorp Vault or Bitwarden or etc

[Go Top](#overview)


## Credits & Acknowledgement
Terraform

