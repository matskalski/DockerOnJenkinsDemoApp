FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ./DockerOnJenkinsDemoApp.sln .
COPY ./DockerOnJenkinsDemoApp.Api/DockerOnJenkinsDemoApp.Api.csproj ./DockerOnJenkinsDemoApp.Api/
RUN dotnet restore
COPY . .
RUN dotnet publish ./DockerOnJenkinsDemoApp.Api/DockerOnJenkinsDemoApp.Api.csproj -c Release -o /output

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS final
WORKDIR /app
COPY --from=build /output .
EXPOSE 8080
ENTRYPOINT [ "dotnet", "DockerOnJenkinsDemoApp.Api.dll" ]