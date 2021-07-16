FROM alpine:3.10
LABEL "repository"="https://github.com/andrewvdp/git-tag-semver"
LABEL "homepage"="https://github.com/andrewvdp/git-tag-semver"
LABEL "maintainer"="Andrew Van De Poel"

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq && apk add --update nodejs npm && npm install -g semver

ENTRYPOINT ["/entrypoint.sh"]
