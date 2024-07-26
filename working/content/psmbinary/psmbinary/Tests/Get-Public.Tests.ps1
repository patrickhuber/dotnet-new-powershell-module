BeforeAll {
    Import-Module (Join-Path $PSScriptRoot ".." "psmbinary.psm1") -Force
}

Describe "Get-Public" {
    Context "When calling"{
        It "should return public and private"{
            $result = Get-Public
            $result | Should -Not -Be $null
            $result | Should -Be "public(private)"
        }
    }
}