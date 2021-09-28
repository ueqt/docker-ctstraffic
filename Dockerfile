FROM mcr.microsoft.com/windows/servercore:20H2

USER ContainerAdministrator
RUN powershell -command Invoke-WebRequest -outfile ctsTraffic.exe https://github.com/microsoft/ctsTraffic/tree/master/Releases/2.0.2.7/x64/ctsTraffic.exe

EXPOSE 4444
ENTRYPOINT ["ctsTraffic.exe", "-listen:*", "-protocol:tcp", "-transfer:0x10000000"]

