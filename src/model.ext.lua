am.app.set_model(
    {
        DAEMON_CONFIGURATION = {
            server = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            listen = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            masternodeprivkey = am.app.get_configuration("NODE_PRIVKEY"),
            masternode = am.app.get_configuration("NODE_PRIVKEY") and 1 or nil
        },
        DAEMON_URL = "https://github.com/Deviantcoin/wallet-5.x/releases/download/v6.0.0/deviant-6.0.0-x86_64-linux-gnu.tar.gz",
        DAEMON_ARCHIVE_KIND = "tar.gz",
        DAEMON_NAME = "bin/deviantd",
        CLI_NAME = "bin/deviant-cli",
        CONF_NAME = "deviant.conf",
        CONF_SOURCE = "__btc/assets/daemon.conf",
        SERVICE_NAME = "deviantd",
    },
    { merge = true, overwrite = true }
)
