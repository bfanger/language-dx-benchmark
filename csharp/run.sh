#!/usr/bin/bash
TIMEFORMAT=" in %Rs"

mkdir /home/benchmark
cd /home/benchmark
cp /mnt/Program.cs .
cp /mnt/csharp.csproj .

echo ""
echo "- C# -"
time dotnet run
sed -i -e "s/: 2/: 3/" Program.cs
time dotnet run
sed -i -e "s/: 3/: 4/" Program.cs
time dotnet run