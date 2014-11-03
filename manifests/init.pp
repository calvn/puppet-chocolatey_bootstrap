class chocolatey_bootstrap (
  $script_url    = "https://chocolatey.org/install.ps1",
  $extra_options = "",
) {
  exec { "Install chocolatey":
    creates  => 'C:\ProgramData\chocolatey',
    command  => "iex ((new-object net.webclient).DownloadString(\'${script_url}\')) $extra_options",
    provider => powershell
  }
}