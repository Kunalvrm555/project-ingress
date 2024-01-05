# project-ingress
project-ingress serves as the official logging system for student check-in and checkout at the [Central Library IIT Kharagpur](https://library.iitkgp.ac.in/). This project offers a robust backend service, a user-friendly frontend client, and a tailored PostgreSQL setup, all housed within Docker containers for seamless deployment and scaling.

### Submodule components:

- **[ingress-backend](https://github.com/kunalvrm555/ingress-backend.git)**: This submodule corresponds to the backend service, developed in Go.

- **[ingress-frontend](https://github.com/kunalvrm555/ingress-frontend.git)**: This submodule pertains to the frontend client, constructed using React.

### Core components:

1. **PostgreSQL**: Customized with the Alpine-based PostgreSQL image, this component initializes the `ingress` database and establishes relevant tables. Its configuration is present within the `postgres` directory.

## Components

1. **PostgreSQL**: Customized with the Alpine-based PostgreSQL image, this component initializes the `ingress` database and establishes relevant tables. Its configuration is present within the `postgres` directory. Prior to running, ensure the following environment variables are set (you can refer to `.env.example`):

```env
POSTGRES_DB=
POSTGRES_USER=
POSTGRES_PASSWORD=
```

2. **ingress-backend**: A Go-based backend service. Prior to running, ensure the following environment variables are set (you can refer to `.env.example`):

```env
JWT_SECRET_KEY=
POSTGRES_USERNAME=
POSTGRES_PASSWORD=
POSTGRES_HOST=
ADMIN_USERNAME=
ADMIN_PASSWORD=
USERNAME=
PASSWORD=
```

3. **ingress-frontend**: A React-driven frontend client that communicates with the backend. It requires the setting of the `REACT_APP_API_URL` environment variable which should point to the IP address of the host machine on port `8080`. For instance:
```env
REACT_APP_API_URL=http://19.168.121.145:8000
```
Here, `19.168.121.145` is the IP address of your host machine. Ensure this value always ends with `:8000`.

## Deployment

1. **Environment Setup**: First and foremost, set all necessary environment variables. Refer to `.env.example` within the respective service directories (backend or frontend) for guidance.
To fetch the submodules, run the following command : 
```bash
git submodule update --init --recursive
```

2. **Starting the Services**: With Docker and Docker Compose installed, navigate to the project's root directory. Deploy all services with:

```bash
docker-compose up --build
```
This command will both build and commence all services as outlined in docker-compose.yml.

**Accessing the Frontend**: 
   - **Locally**: Post successful deployment, the frontend can be accessed at: `http://localhost`.
   - **Over the Network**: If you wish to access the frontend from another device on the same network, use the IP address of the host machine followed by the exposed port. For example, if the host machine's IP address is `192.168.1.10`, access the frontend via `http://192.168.1.10`.


Shutting Down: To halt all services, either press CTRL + C in the terminal or execute:
```bash
docker-compose down
```

## Note
Customizations for the PostgreSQL setup are encapsulated within the postgres directory. It's advised not to modify configurations unless necessary.

