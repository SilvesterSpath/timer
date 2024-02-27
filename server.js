const json = require('json-server');
const cors = require('cors');
const dotenv = require('dotenv');
const path = require('path');

dotenv.config();

const server = json.create();

// Specify db location
const router = json.router('db.json');

const middleware = json.defaults({
  static: './build',
});

const corsOptions = {
  origin: '*',
  credentials: true,
};

server.use(cors(corsOptions));
server.use(middleware);
server.use(router); // <-- Mount router

const PORT = process.env.JSON_PORT || 5001;

server.listen(PORT, () => {
  console.log(`JSON Server is running on port ${PORT}`);
});
