# OpnHost

## Installation for Windows (64-bit version)

#### 1. **Install .NET SDK.**
Download the SDK from the Microsoft website [Download .NET](https://dotnet.microsoft.com/en-us/download).
OpnHost requires version `.NET 8.0`. You can download it directly [here](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/sdk-8.0.404-windows-x86-installer). You also need the .NET Runtime for .NET Core, which you can download [here](https://download.visualstudio.microsoft.com/download/pr/8d6c1aaa-7d58-455a-acec-aab350860582/ab5f7c23dc72516e77065fcaf99ad444/aspnetcore-runtime-8.0.11-win-x64.exe).

#### 2. **Install MongoDB.**
Before installing OpnHost, download and install MongoDB. You can get it [here](https://www.mongodb.com/try/download/community).

#### 3. **Download OpnHost from this GitHub repository. (OpnHost_win64.msi)**

#### 4. **Create a startup task.**
Open Task Scheduler (press Windows key + R and type `taskschd.msc`).
If you used the default installation location: `C:\Program Files\OpnHost`, you can download our exported task here: [Download task](https://github.com/opnhost/opnhost/blob/main/OpnHost.xml).
If you chose a different path, download the task and open it in a text editor. Modify the `<Command>"C:\Program Files\OpnHost\opnhosts.exe"</Command>` part to reflect your installation folder path ending with `opnhosts.exe`.
In the top menu, select `Action` then `Import Task...` and choose the task file. Click `Ok`.
If you don't see the import option, ensure no task or folder is selected in the view below.

#### 5. **Configure OpnHost.** 

> [!IMPORTANT]
> Please read the section about the Connection string before configuring OpnHost. ([Connection String](#connection-string))

Before using the newly created task, start OpnHost manually.
Navigate to the installation directory in Explorer.
Right-click on `opnhosts.exe` and select `Run as administrator`.
Your web browser should open with the setup page to configure the application.
If the browser doesn't open, check the console for the URL address.
The address line will look like this: `<WebSetup> Web server: http://127.0.0.1:49500/`.
Configure OpnHost. Once the configuration is complete (the console will close itself), proceed to the next step.

#### 6. **Restart your computer.**

## Installation for Linux (64-bit version)

#### 1. **Install MongoDB**
Instructions for installing MongoDB on Linux can be found [here](https://www.mongodb.com/docs/manual/administration/install-on-linux/).

#### 2. **Download OpnHost**
To download OpnHost, you can use a bash script. Ensure you have `unzip` and `wget` installed on your machine.
If your machine is based on ARM architecture (e.g., Raspberry Pi), use `install_linux_arm64.sh`.
Otherwise, use `install_linux_x64.sh`.

#### 3. **Configure OpnHost**

> [!IMPORTANT]
> Please read the section about the Connection string before configuring OpnHost. ([Connection String](#connection-string))

Before the script exits, it will open a web browser in most cases where you need to configure OpnHost.
If it doesn't open the web browser, it will display the URL address in the console window in a format like this: `[INFO] <WebSetup> Web server: http://127.0.0.1:45353/`.

> [!IMPORTANT]
> After configuration, OpnHost is ready to use. Make sure it runs with root privileges; otherwise, it may not work.

## Automatic start after reboot (Linux)
If your Linux OS supports systemd, you can configure OpnHost to start automatically after a reboot.
Download `opnhost.service` and move it to `/etc/systemd/system`. This will create a systemd task.
You only need to enable it using `systemctl enable opnhost`.

## Connection String
While you are configuring OpnHost, you are prompted twice for the **connection string**.
It is a string in URL-like format that tells OpnHost how to connect to the database.
In most cases, it will look something like this: `mongodb://localhost:27017/`.
For more information about **connection strings**, we recommend reading [MongoDB Connection strings](https://www.mongodb.com/docs/manual/reference/connection-string/).

> [!WARNING]
> OpnHost doesn't check the integrity of the string and will allow you to continue without it. If the connection string is corrupted or empty, OpnHost won't be able to start.