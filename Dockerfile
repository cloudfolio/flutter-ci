FROM google/dart

LABEL version="1.12.13"
LABEL description="Flutter CI environment"

RUN git clone https://github.com/flutter/flutter.git -b stable
RUN echo 'export PATH="$PATH:`pwd`/flutter/bin"' >> $HOME/.bashrc
RUN flutter doctor

CMD ["bash"]