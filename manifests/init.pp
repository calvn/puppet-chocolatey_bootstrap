class chocolatey_bootstrap (
  $script_url    = "https://chocolatey.org/install.ps1",
  $extra_options = "",
) {
  exec { "Install chocolatey":
    creates  => 'C:\ProgramData\chocolatey',
    command => "\$temp = Join-Path \$env:TEMP \'chocoscript.ps1\'; ((new-object net.webclient).DownloadFile(\'${script_url}\', \$temp)); iex \"\$temp ${extra_options}\" ",
    provider => powershell
  }
}