FROM mcr.microsoft.com/windows:20H2

RUN git clone https://github.com/Microsoft/ctsTraffic
RUN cd ctsTraffic/Releases/2.0.2.7/x64

EXPOSE 4444
ENTRYPOINT ["ctsTraffic.exe", "-listen:*", "-protocol:tcp", "-transfer:0x10000000"]

