function Get-Public {
    $result = Get-Private
    return "public($result)"
}