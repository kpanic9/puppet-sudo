server:
	docker run --name puppet --hostname puppet -v ${CURDIR}/master/:/etc/puppetlabs/code/  -v ${CURDIR}/modules/:/opt/puppetlabs/puppet/modules/ puppet/puppetserver

agent:
	docker run --name puppet-agent --link puppet:puppet puppet/puppet-agent-ubuntu
	docker rm puppet-agent

cleanup:
	docker rm puppet
