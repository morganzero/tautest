class MultiServerWebSocket:
    def __init__(self):
        self.connections = {}

    def add_connection(self, server_id, connection):
        self.connections[server_id] = connection

    def remove_connection(self, server_id):
        del self.connections[server_id]

    def get_connection(self, server_id):
        return self.connections.get(server_id)
