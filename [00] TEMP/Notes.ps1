<#
PowerShell Coding Standards / Guidelines (Short Version)

1. Use Verb-Noun for function names
❌ New-PCXCMApplicationDeploymentment
✅ New-PCXCMApplicationDeployment

2. Use PascalCase for all names
❌ $name, $collectionname, $softwereversion
✅ $Name, $CollectionName, $SoftwareVersion

3. Avoid spelling mistakes
❌ $softwereversion, $Collectiname
✅ $SoftwareVersion, $CollectionName

4. Do not use unnecessary quotes
❌ -Name "$name"
✅ -Name $Name

5. Keep naming consistent
❌ Collectionname vs CollectionName
✅ Always use CollectionName

6. Follow the given structure
✅ Structure is copied under the TEMP folder inside the project folder

7. Test Every function even for small changes.
✅  Code can brak at any time even for a small change
✔ 
8. Spaces and new lines inside the code.
✅  Do not keep unnecessary blank lines or white spaces. 1 line blank is okay for readability. 1 space between the word is okay for good visual. Good Alignment tab is okay.

✔ 
Follow these guidelines to make scripts clean, consistent, and production-ready

Next TOPIC:
Using begin, Process, end - Keywords

example
    
        # Start
        begin {
            # "Welcome Note "
        }

        # Actuall Process goeas here
        process {
            # actuall process should be at this section
        }

        # End in flow chart
        end {
            # Completion Note
        }

#>

