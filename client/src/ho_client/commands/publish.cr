module HOClient::Commands
  class Publish
    def run
      io = IO::Memory.new
      Process.run(shell_command_name, shell: true, output: io)
      puts io.to_s
    end

    def shell_command_name
      "hamster export xml #{Time.now.to_s("%Y-%m-%d")}"
    end
  end
end
