@echo off
:: Set your server RAM here (4G = 4 Gigabytes, 6G = 6 Gigabytes)
SET RAM_AMOUNT=10G

:: Ensure this matches the exact name of your Paper jar file
SET JAR_NAME=purpur-1.21.11-2568.jar

title Purpur 1.20.1 Server Console
echo Starting server with %RAM_AMOUNT% of allocated RAM...

"C:\Program Files\Java\jdk-21.0.11\bin\java.exe" -Xms%RAM_AMOUNT% -Xmx%RAM_AMOUNT% -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8m -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://emc.gs -Daikars.new.flags=true -jar %JAR_NAME% nogui

echo Server stopped. Press any key to close this window.
pause