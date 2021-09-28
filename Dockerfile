# FROM mcr.microsoft.com/dotnet/runtime:5.0
FROM mcr.microsoft.com/windows/nanoserver:1809
# FROM mcr.microsoft.com/windows/servercore:ltsc2019
# FROM mcr.microsoft.com/windows:1809

USER ContainerAdministrator

RUN cd C:
RUN setx /M PATH "%PATH%;C:/"

# RUN powershell -command Invoke-WebRequest -outfile ctsTraffic.exe https://github.com/microsoft/ctsTraffic/tree/master/Releases/2.0.2.7/x64/ctsTraffic.exe

COPY ./ctsTraffic.exe ./
# RUN curl.exe -o ctsTraffic.exe https://github.com/microsoft/ctsTraffic/raw/master/Releases/2.0.2.7/x64/ctsTraffic.exe
# RUN curl.exe -o VC_redist.x64.exe https://aka.ms/vs/16/release/VC_redist.x64.exe
# RUN start /w vc_redist.x64.exe /install /quiet /norestart 

EXPOSE 4444
ENTRYPOINT ["ctsTraffic.exe", "-listen:*", "-protocol:tcp", "-transfer:0x10000000", "-consoleverbosity:1"]

