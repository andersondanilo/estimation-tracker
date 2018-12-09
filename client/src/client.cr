require "commander"
require "./ho_client/*"

cli = Commander::Command.new do |cmd|
  cmd.use = "Hamster online client"
  cmd.long = "The client to feed hamster online api"

  cmd.run do |options, arguments|
    puts cmd.help
  end

  cmd.commands.add do |cmd|
    cmd.use = "publish"
    cmd.short = "Publish today activities to the API"

    cmd.run do |options, arguments|
      command = HOClient::Commands::Publish.new
      command.run
    end
  end
end

Commander.run(cli, ARGV)
