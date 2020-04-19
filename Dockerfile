FROM google/dart

LABEL description="Flutter CI environment"

RUN apt update && apt install -y unzip && apt clean
RUN git clone https://github.com/flutter/flutter.git -b stable
RUN echo 'export PATH="$PATH:`pwd`/flutter/bin"' >> $HOME/.bashrc
RUN flutter doctor

CMD ["bash"]