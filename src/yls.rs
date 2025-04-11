use zed_extension_api::Extension;

struct YaraExtension {}

impl Extension for YaraExtension {
    fn new() -> Self {
        Self {}
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed_extension_api::LanguageServerId,
        _worktree: &zed_extension_api::Worktree,
    ) -> zed_extension_api::Result<zed_extension_api::Command> {
        match _worktree.which("yls") {
            Some(path) => Ok(zed_extension_api::process::Command {
                command: path,
                args: vec!["-v".into()],
                env: vec![],
            }),
            None => Err("Unable to find yls from worktree.".into()),
        }
    }
}

zed_extension_api::register_extension!(YaraExtension);
