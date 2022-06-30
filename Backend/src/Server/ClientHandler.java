package Server;

import Contoller.Controller;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.Objects;
import java.util.Scanner;

public class ClientHandler extends Thread {
    String serverSuccess = "1";
    String response;
    private Socket socket;

    public ClientHandler(Socket socket) {
        this.socket = socket;
    }

    @Override
    public void run() {
        try{
            DataInputStream dis = new DataInputStream(socket.getInputStream());
            DataOutputStream dos = new DataOutputStream(socket.getOutputStream());

            StringBuilder request = new StringBuilder();
            int requestInByte = dis.read();
            while (requestInByte != 0){
                request.append((char) requestInByte);
                requestInByte = dis.read();
            }

            Scanner scanner = new Scanner(request.toString());

            String command = scanner.nextLine();
            String data = scanner.nextLine();
            System.out.println(command);
            System.out.println(data);
            if(command.equals("Signup")){
                checkedDataSignUp(data);
                if(Objects.equals(serverSuccess, "1")){
                    new Controller().run(command , data);
                }
                dos.writeBytes(serverSuccess);
                dos.flush();

                System.out.println("serverSuccess sent to client");
            }
            if (command.equals("Login")) {
                if(checkedDataLogin(data)) {
                    if (new Controller().run(command, data))
                        serverSuccess = "1";
                    else
                        serverSuccess = "2";
                }
                System.out.println(serverSuccess);
                dos.writeBytes(serverSuccess);
                dos.flush();

                System.out.println("serverSuccess sent to client");
            }
            if(command.equals("profile")){
                response = new Controller().accountInfo(data);
                dos.writeBytes(response);
                dos.flush();
                System.out.println("response sent to client");
            }

            if(command.equals("EditProfile")){
               if(checkedDataEditProfile(data)){
                   if (new Controller().run(command , data))
                       serverSuccess = "1";
                   else
                       serverSuccess = "2";
               }
                System.out.println(serverSuccess);
                dos.writeBytes(serverSuccess);
                dos.flush();
            }

            dos.close();
            dis.close();
            scanner.close();

        } catch (IOException e) {
            System.out.println("Client Handler exception");
        }
    }

    public void checkedDataSignUp(String data) throws IOException {
        if(data.split("/").length < 5) {
            serverSuccess = "0";
        }
    }

    public boolean checkedDataLogin(String data) throws IOException {
        if(data.split("/").length < 2) {
            serverSuccess = "0";
            return false;
        }
        return true;
    }

    public boolean checkedDataEditProfile(String data){
        if(data.split("/").length < 4){
            serverSuccess = "0";
            return false;
        }
        return true;
    }

}
