#!/bin/bash
set -ev

dotnet build ./src/Marten.Testing/Marten.Testing.csproj --framework netcoreapp2.1 --configuration Release
npm run test
dotnet test ./src/Marten.Testing/Marten.Testing.csproj --framework netcoreapp2.1 --configuration Release
