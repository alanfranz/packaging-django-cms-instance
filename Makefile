

installer_env:
	virtualenv installer_env
	installer_env/bin/pip install "djangocms_installer==0.8.7"
	touch installer_env

ourcms: installer_env
	mkdir -p ourcms/state
	. installer_env/bin/activate
	cd ourcms ; djangocms --db sqlite://localhost/$$(pwd)/state/project.db --no-input -f -p ourcms ourcms




