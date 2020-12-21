param(
   [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
   [ValidateSet('DEV', 'BLD', 'ACC', 'PRD')]
   $TargetEnvironment
)

$prefix = 'Be.Stateless.BizTalk'

LibraryManifest -Name 'BizTalk.Dsl' -Description 'DSL for BizTalk Factory' -Build {
   Assembly -Path (Get-ResourceItem -Name "$prefix.Dsl.Abstractions", `
         "$prefix.Dsl.Binding", `
         "$prefix.Dsl.Binding.Conventions", `
         "$prefix.Dsl.Pipeline", `
         "$prefix.Explorer"
   )
}