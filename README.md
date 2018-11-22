# MedTune Infrastructure kit

### Work In Progress

This repository will contain automated scripts for settings up our training or production infrastructure at least in the cloud (we'll add bare-metal ASAP). 
The main goal behind all this tooling is make our infrastructure reproduceble (Infrastructure as Code), to accelerate infrastructure setup & provide 

# Things you'll find here

- automated setup scripts for new clean machines
- automated self destruction ?????
- running kubernetes clusters
- running gpu boosted kubernetes clusters
- Nvidia CUDA & CUDNN setup
- Connecting & mapping external services
- VM initialization scripts
- DNS mapping (for route53)
- Terraform configurations
- Static IP addresses allocation

# Things that doesn't exist here

In // this repository doesn't handle bare-metal things like:
- setting up networks
- settings up volumes & storage environnement
- bare metal security aspects

