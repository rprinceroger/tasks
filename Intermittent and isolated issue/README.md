# How to go about an intermittent and isolated issue:

## When to use these files
 - if it is an intermittent issue and you as an IT who's not affected by the said issue.

## How to use these files: 
 - Bat file, simply download the file and double click on it.
 - PowerShell, must have a PowerShell installed, open the PowerShell on their PC and copy and paste then hit enter to process the commands.

> [!NOTE]
> For the Mac users, PowerShell is not pre-installed.

## Here's the additional steps for Mac users: 
 - Open their Mac Terminal and execute the command: 
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
 - Once Homebrew is installed open Homebrew and execute the command: 
```
brew tap microsoft/powershell
brew install --cask powershell
```
 - Once PowerShell is installed execute the command: 
```
pwsh
```

## Here's a how to read the CMD and PowerShell report: 

**Motherboard information and Processor Information** - gives you the general idea if the user's PC can be upgrade or what will be the next processor to recommend for an upgrade. Processor's help the overall performance of the PC.

**Installed Physical Memory (count)** - this gives you idea if they are using the right memory card.
(exp. if it is 2 slot - it should be 2x 8GHz of RAM, 2x 16GHz of RAM, 32GHz of RAM. If it is NOT, means they are not using the right RAM for their PC).


**RAM Consumtion** - this give you the idea if they are using too much memory of their PC and it is about to crash. (exp. below 20.99999)

![CMD - Bat file report](https://github.com/rprinceroger/tasks/assets/138009208/d87aa25a-48cd-4158-b763-8f86e2e6aeaf)


![PowerShell file report](https://github.com/rprinceroger/tasks/assets/138009208/724f8397-26d4-4944-a429-d2acd3a0d77c)


> PS. When I was a Technical Support, we identify these type of issue as `User Issue` and if all the `hardware` and user `behavior` was meet. This will be tagged as `Open Ticket` for as long as we're using the same tools. These types of issue do exist, from the time I join the company until I leave. As a tech, you'll encounter several issues and attempt to fix, if not minimize the occurrence of the said issue. Having a low specs but knowing how to maintain it is far better than having a high specs but don't know how to maintain it.
