install_pip_deps:
	pip3 install mkdocs
	pip3 install requests
	pip3 install mistune
	pip3 install md2cf
	pip3 install mkdocs-material
	pip3 install mkdocs-section-index

prepare: install_pip_deps

build_mkdocs:
	mkdocs build

build_mkdocs_verbose:
	mkdocs build --verbose
