# Define character classes
$lowercaseLetters = 'abcdefghijklmnopqrstuvwxyz'
$uppercaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
$numbers = '0123456789'
$specialCharacters = '!@#$%^&*()-_=+[]{}|;:,.<>?'

# Combine character classes
$allCharacters = $lowercaseLetters + $uppercaseLetters + $numbers + $specialCharacters

# Specify password length
$passwordLength = 12

# Generate password
$password = ''
for ($i = 0; $i -lt $passwordLength; $i++) {
    $randomIndex = Get-Random -Minimum 0 -Maximum $allCharacters.Length
    $password += $allCharacters[$randomIndex]
}

Set-Clipboard $password
# Output the generated password
Write-Output "Generated Password: $password , and copied to clipboard"
