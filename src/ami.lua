return {
    title = "Deviant Node",
    base = "__btc/ami.lua",
    commands = {
        info = {
            action = "__dev/info.lua"
        },
        bootstrap = {
            description = "ami 'bootstrap' sub command",
            summary = "Bootstraps the Deviant node",
            action = "__dev/bootstrap.lua",
            contextFailExitCode = EXIT_APP_INTERNAL_ERROR
        }
    }
}
