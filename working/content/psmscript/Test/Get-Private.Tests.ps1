BeforeAll {
    Import-Module (Join-Path $PSScriptRoot ".." "psmscript.psm1") -Force
}

Describe "Get-Private" {
    Context "When calling"{
        It "should return private"{
            InModuleScope "psm1"{
                $result = Get-Private
                $result | Should -Not -Be $null
                $result | Should -Be "private"
            }
        }
    }
}