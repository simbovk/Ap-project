package Server;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {
    public void start() throws IOException {
        try {
            ServerSocket serverSocket = new ServerSocket(8000);
            while (true){
                Socket socket = serverSocket.accept();
                new ClientHandler(socket).start();
            }
        } catch (IOException e) {
            System.out.println("Can not start Server");
        }
    }
}
