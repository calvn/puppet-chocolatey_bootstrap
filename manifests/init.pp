class chocolatey_bootstrap (
  $script_url = "https://chocolatey.org/install.ps1"
) {
  exec { "Install chocolatey":
    creates  => 'C:\ProgramData\chocolatey',
    command  => "iex ((new-object net.webclient).DownloadString(\'${script_url}\'))",
    provider => powershell
  }

  include chocolatey
}