require("util")

function get_filename(version)
  local filename = PLUGIN.name .. ".phar"
  return filename
end

function github_base_url(github_repo, version)
  local url = "https://github.com/" .. github_repo .. "/releases/download/" .. version
  return url
end

function github_download_url(github_repo, version)
  local filename = get_filename(version)
  local url = github_base_url(github_repo, version) .. "/" .. filename
  return url
end

function github_checksum_url(github_repo, version)
  local url = "https://getcomposer.org/download/" .. version .. "/composer.phar.sha256sum"
  return url
end
