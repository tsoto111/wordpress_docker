# config valid for current version and patch releases of Capistrano
lock "~> 3.14.1"

set :application, "wordpress_docker"
set :repo_url, "git@github.com:tsoto111/wordpress_docker.git"

# User settings deployment
set :ssh_options, {
    forward_agent: true
}

set :user, ENV["USER"]

# Target location of deployment on the server
set :deploy_to, "/opt/webhosting/sites/wordpress_docker"

# Symlinked directory/files on the server to prevent these files from being overwritten on deploy!

append :linked_files, "public/wp-config.php" # Enable this once wp-config.php has been set up on the server!!!
append :linked_dirs, "public/wp-content/uploads", "public/wp-content/plugins"

# Keep how many releases on server?
set :keep_releases, 3

# ====================================================================
# Default "Other" Capistrano Settings
# ====================================================================

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
