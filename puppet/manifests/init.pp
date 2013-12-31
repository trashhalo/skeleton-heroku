class skeleton-heroku{
	stage { 'bootstrapFirst': 
		before => Stage['main'],
	}
	
	class{'solka::bootstrap':
		stage=>bootstrapFirst
	}

	exec{'install-heroku':
		command=>'/usr/bin/wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh'
	}
}
include skeleton-heroku
