FROM openjdk:11

WORKDIR /root
COPY commandlinetools-linux-7583922_latest.zip .

RUN unzip * && rm -rf commandlinetools-linux-7583922_latest.zip
RUN cd cmdline-tools/bin && yes | ./sdkmanager --licenses --sdk_root=$(pwd)

ENV ANDROID_SDK_ROOT /root/cmdline-tools/bin

CMD ["tail", "-f", "/dev/null"]
