#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["aspnetcore_flutter/aspnetcore_flutter.csproj", "aspnetcore_flutter/"]
RUN dotnet restore "aspnetcore_flutter/aspnetcore_flutter.csproj"
COPY . .
WORKDIR "/src/aspnetcore_flutter"
RUN dotnet build "aspnetcore_flutter.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "aspnetcore_flutter.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "aspnetcore_flutter.dll"]