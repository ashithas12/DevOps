FROM mcr.microsoft.com/dotnet/sdk:9.0
WORKDIR /app
COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o /out
WORKDIR /out
EXPOSE 8080

ENTRYPOINT ["dotnet", "webapi.dll"]