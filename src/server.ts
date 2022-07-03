import express, { Request, Response } from 'express';

const app = express();
const port = 9001;

app.use(express.json());

app.get('/', (req: Request, res: Response) => {
    res.send('Backend works');
});

app.listen(port, () => console.log('test on port', port));