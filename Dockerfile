# FROM mcr.microsoft.com/windows/nanoserver:1809
FROM mcr.microsoft.com/windows/servercore:ltsc2019

USER ContainerAdministrator

RUN cd C:
RUN setx /M PATH "%PATH%;C:/"

# RUN powershell -command Invoke-WebRequest -outfile ctsTraffic.exe https://github.com/microsoft/ctsTraffic/tree/master/Releases/2.0.2.7/x64/ctsTraffic.exe

RUN curl.exe -o ctsTraffic.exe https://github.com/microsoft/ctsTraffic/tree/master/Releases/2.0.2.7/x64/ctsTraffic.exe

EXPOSE 4444
# ENTRYPOINT ["ctsTraffic.exe", "-listen:*", "-protocol:tcp", "-transfer:0x10000000"]

