# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
#
# Authors:
# - Paul Nilsson, paul.nilsson@cern.ch, 2022

FROM busybox
COPY . .

MAINTAINER Paul Nilsson
USER root
COPY execute.sh /usr/bin/execute.sh
ENV WORKDIR 1234567890

# Execute the clean-up script
ENTRYPOINT ["sh", "/usr/bin/execute.sh"]
