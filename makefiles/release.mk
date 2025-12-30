.PHONY: all clean test

TAG_LATEST := $$(git describe --tags $(git rev-list --tags --max-count=1))

bump:
	# Automatically determine the next version and create a new tag
	cz bump --yes --changelog --annotated-tag --no-verify

bump-check:
	# Check what the next version is without making any changes
	cz bump --yes --changelog --annotated-tag --no-verify --allow-no-commit --dry-run

bump-major:
	# Automatically determine the next version and create a new tag
	cz bump --yes --changelog --annotated-tag --no-verify --increment major

bump-minor:
	# Automatically determine the next version and create a new tag
	cz bump --yes --changelog --annotated-tag --no-verify --increment minor

bump-patch:
	# Automatically determine the next version and create a new tag
	cz bump --yes --changelog --annotated-tag --no-verify --increment patch

checkout-main-branch:
	# Checkout the main branch
	git checkout main

generate-changelog:
	# Generate or update the changelog
	cz changelog

push-changes:
	# Push changes to the remote repository
	git push origin main

push-tag:
	# Push the newly created tag to the remote repository
	git push origin $(TAG_LATEST)

release: checkout-main-branch bump push-changes push-tag
	# Perform a full release: bump version, update changelog, and push tag
	gh release create $(TAG_LATEST) --draft --generate-notes --latest --verify-tag

validate-commits:
	# Validate commit messages according to Conventional Commits
	cz check
