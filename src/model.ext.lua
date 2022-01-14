am.app.set_model(
    {
        DAEMON_CONFIGURATION = {
            server = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            listen = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            masternodeprivkey = am.app.get_configuration("NODE_PRIVKEY"),
            masternode = am.app.get_configuration("NODE_PRIVKEY") and 1 or nil
        },
        DAEMON_URL = "https://github.com/Deviantcoin/Wallet-4.1.x/releases/download/v5.0.0/Deviant-5.0.0-x86_64-linux-gnu.zip",
        DAEMON_NAME = "Deviant-5.0.0-x86_64-linux-gnu/deviantd",
        CLI_NAME = "Deviant-5.0.0-x86_64-linux-gnu/deviant-cli",
        CONF_NAME = "dev.conf",
        CONF_SOURCE = "__btc/assets/daemon.conf",
        SERVICE_NAME = "deviantd",
    },
    { merge = true, overwrite = true }
)
