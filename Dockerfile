FROM library/archlinux

LABEL maintainer="self@2m.lt"

RUN apk add ca-certificates fuse3 sqlite

COPY --from=flyio/litefs:0.5 /usr/local/bin/litefs /usr/local/bin/litefs

ENTRYPOINT litefs mount
