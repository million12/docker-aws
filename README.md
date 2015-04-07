## Amazon Web Services Docker Image
This is a [million12/aws](https://registry.hub.docker.com/u/million12/aws/) docker image with Amazon Web Services. It's based on CentOS-7 and offers ability to provide any argument to aws process. This Docker Image is using aws tool written by [Timothy Kay](https://github.com/timkay) and can be found under this link [timkay/aws](https://github.com/timkay/aws). 

`aws` is a command-line tool that gives you easy access to Amazon EC2 and Amazon S3.

This container is built that any extra parameters provided to `docker run` will be passed directly to aws command. For example, if you run `docker run [run options] million12/aws s3ls BUCKET_NAME` you pass `s3ls BUCKET_NAME` to aws command.

## ENV variables

#### AWS Access Key and Secret Access Key
For connecting with your AWS account you need two variables to be set that contains your private AWS keys:  
`EC2_ACCESS_KEY=your_key`  
`EC2_SECRET_KEY=your_key`

## Usage 
`docker run \`  
`-ti \`  
`--rm \`  
`--env="EC2_ACCESS_KEY=your_key" \`  
`--env="EC2_SECRET_KEY=your_key" \`    
`million12/aws \`  
`s3ls BUCKET_NAME`

### AWS CMD params 
`aws` command can be used with some parameters to run with. Simple `--help ` output below:   
	
	Usage: aws ACTION [--help]
	where ACTION is one of
	aws		xml-version
	cfn		describestacks describestackresources describestackresource
	ebn		check-dns-vailability create-application create-application-version
			create-configuration-template create-environment create-storage-location
			delete-application delete-application-version delete-configuration-template
			delete-environment-configuration describe-application-versions
			describe-applications describe-configuration-options
			describe-configuration-settings describe-configuration-options
			describe-environment-resources describe-environments list-solution-stacks
			rebuild-environment request-environment-info restart-app-server
			retrieve-environment-info swap-environment-cnames terminate-environment
			update-application update-application-version update-environment
	ec2		add-group addgrp add-keypair addkey add-placement-group allocate-address allad
			associate-address aad attach-volume attvol authorize auth
			cancel-spot-instance-requests cancel csir confirm-product-instance create-image
			cimg create-snapshot csnap create-spot-datafeed-subscription addsds
			delete-spot-datafeed-subscription delsds describe-spot-datafeed-subscription
			dsds describe-spot-instance-requests dsir describe-spot-price-history dsph
			create-volume cvol delete-group delgrp delete-placement-group delete-keypair
			delkey delete-snapshot delsnap delete-volume delvol deregister
			describe-addresses dad describe-availability-zones daz describe-security-groups
			describe-group describe-groups dgrp describe-image-attribute describe-images dim
			describe-instances din describe-instance-attributes dinatt
			describe-instance-status dins describe-keypairs dkey describe-placement-groups
			describe-regions dreg describe-reserved-instances
			describe-reserved-instances-offerings describe-snapshot-attribute dsa
			reset-snapshot-attribute rsa modify-snapshot-attribute msa describe-snapshots
			dsnap describe-volumes dvol describe-volume-status dvs detach-volume detvol
			disassociate-address disad get-console-output gco
			purchase-reserved-instance-offering reboot-instances reboot release-address rad
			register-image register request-spot-instances req-spot rsi revoke run-instances
			run-instance run start-instances start stop-instances stop
			modify-instance-attribute minatt terminate-instances tin create-tags ctags
			describe-tags dtags delete-tags deltags
	elb		configure-healthcheck ch create-app-cookie-stickiness-policy cacsp
			create-lb-cookie-stickiness-policy clbcsp create-lb clb create-lb-listeners clbl
			delete-lb dellb delete-lb-listeners dlbl delete-lb-policy dlbp
			describe-instance-health dih describe-lbs dlb disable-zones-for-lb dlbz
			enable-zones-for-lb elbz register-instances-with-lb rlbi
			deregister-instances-from-lb dlbi set-lb-listener-ssl-cert slblsc
			set-lb-policies-of-listener slbpol
	iam		groupaddpolicy pgp groupadduser groupcreate cg groupdel groupdelpolicy
			grouplistbypath lg grouplistpolicies lgp groupgetpolicy grouplistusers gg
			groupmod groupremoveuser groupuploadpolicy useraddcert useraddkey cak
			useraddloginprofile clp useraddpolicy pup usercreate cu userdeactivatemfadevice
			userdel userdelcert userdelkey userdelloginprofile dlp userdelpolicy
			userenablemfadevice usergetattributes gu usergetloginprofile glp userlistbypath
			lu userlistcerts userlistgroups userlistkeys userlistmfadevices userlistpolicies
			lup usergetpolicy usermod usermodcert usermodkey usermodloginprofile ulp
			userresyncmfadevice useruploadpolicy servercertdel servercertgetattributes
			servercertlistbypath servercertmod servercertupload accountaliascreate caa
			accountaliasdelete daa accountaliaslist laa listroles lr
	pa		lookup
	r53		list-resource-record-sets lrrs get-change gch get-hosted-zone ghz
			create-hosted-zone chz delete-hosted-zone dhz change-resource-record-set crrs
	rds		modify-db-instance mdb delete-db-instance deldb add-tags-to-resource cdbtags
			describe-db-instances ddb create-db-snapshot cdbsnap describe-db-snapshots
			ddbsnap copy-db-snapshot cpdbsnap restore-db-instance-from-db-snapshot rdb
			delete-db-snapshot deldbsnap download-db-log-file-portion downdblog
			describe-db-log-files ddlf
	s3		ls get cat head mkdir put delete rmdir rm copy cp dmo post
	sdb		create-domain cdom delete-attributes datt delete-domain ddom get-attributes gatt
			list-domains ldom put-attributes patt select domain-metadata
	sqs		add-permission addperm change-message-visibility cmv create-queue cq
			delete-message dm delete-queue dq get-queue-attributes gqa list-queues lq
			receive-message recv remove-permission remperm send-message send
			set-queue-attributes sqa
	aws versions: (ec2 2013-10-15, sqs 2012-11-05, elb 2011-11-15, sdb 2009-04-15, ebn 2010-12-01, cfn 2010-05-15, rds: 2013-09-09)
	Documentation: Search in Google for 'aws <service>-<cmd> cli' e.g. 'aws rds-restore-db-instance-from-db-snapshot cli'
	The link with 'rds-' on the front will list all the parameter shortcuts
    
## Documentation
For more information about which command do what please visit official [timkay/aws](https://github.com/timkay/aws) website.  
[Documentation Link](http://timkay.com/aws/).  
[HowTo](http://timkay.com/aws/howto.html).

## Authors

Author: Marcin ryzy Ryzycki (<marcin@m12.io>)  
Author: Przemyslaw Ozgo (<linux@ozgo.info>)

## Acknowledgments
Author: Timothy Kay (<https://github.com/timkay>)

---

**Sponsored by** [Typostrap.io - the new prototyping tool](http://typostrap.io/) for building highly-interactive prototypes of your website or web app. Built on top of TYPO3 Neos CMS and Zurb Foundation framework.
