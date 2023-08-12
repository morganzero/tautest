class PlexServers:
    def __init__(self):
        self.servers = {}

    def add_server(self, server_id, server_config):
        self.servers[server_id] = PlexServer(server_config)

    def remove_server(self, server_id):
        del self.servers[server_id]

    def get_server(self, server_id):
        return self.servers.get(server_id)
