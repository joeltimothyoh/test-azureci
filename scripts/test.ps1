begin {
}process {
    try {
        Get-WmiObject -Class Win32_Logicaldisk
    }catch {
        throw
    }
}
