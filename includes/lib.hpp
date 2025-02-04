#ifndef LIB_HPP
#define LIB_HPP
#include <string>
#include <vector>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <poll.h>
int parserPort(char *portInString);
class server 
{
	private :
		std::string _port;
		std::string _pass;
		std::vector<pollfd> _pfds;
		int _server_fd;
		int _new_socket;
		struct sockaddr_in _address;
		socklen_t _addrlen;	
		char _buffer[1024];
	public :
		server(std::string port, std::string password);
		~server();
		//todo
		std::string getPort(void);
		std::string getPass(void);
		void listenClient();
		void bindSocket();
		void acceptClient();
		void readInSocket();
		void sendMessage(std::string message);
};
#endif // !LIB_HPP
