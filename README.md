# Agent Roll Cage (ARC) V0.1
ARC will be WillFreeAI's primary deployment platform for libraries of agentic frameworks. It will host open-source fine-tuned models for specialized agents, including those for function calling, programming, LaTeX mathematics, synthetic dataset generation, and more. Our goal with ARC is to create a comprehensive platform that supports the development and deployment of advanced agentic systems, making powerful AI tools accessible to everyone.

## Announcing WillFreeAI: Revolutionizing AI Agentic Frameworks
Artificial intelligence is the most rapidly growing technology in the world. From everyday people to companies and organizations, AI has made revolutionary changes that will ultimately bear fruit for our world, our children, and our legacy. I am excited to announce the founding of WillFreeAI, an open-source AI software organization devoted to Supervised Fine Tuning with an emphasis on Multimodal Super Alignment by Building Agentic Framework Action Spaces & Intercommunication Protocols.

<img
src="docs/ARC_05_lablab.jpeg"
  style="display: inline-block; margin: 0 auto; max-width: 50px">

## Welcome to the Llama 3 Hackathon!
Get ready for an exciting adventure in app development with Llama 3 - join us for our online AI hackathon!

🏆 Win an opportunity to participate in the Lablab NEXT acceleration program, exciting cash prizes, credits, and gear from LlamaIndex, Together AI & Zilliz.
***[🦾LabLab.ai Llama3 Hackathon🦿](https://lablab.ai/event/llama-3-ai-hackathon)

<img
src="docs/llama3_hackathon.jpeg"
  style="display: inline-block; margin: 0 auto; max-width: 50px">

## Installation Instructions

### Prerequisites
1. **Install Miniconda 3**: 
   [Miniconda Installation Guide](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html)
2. **Install CUDA and cuDNN**:
   [CUDA Installation Guide](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html)
3. **Install PostgreSQL (psql)**:
   [PostgreSQL Installation Guide](https://www.postgresql.org/download/)
4. **Open psql shell, enter default commands, and follow database setup template below:**

CREATE USER your_username WITH PASSWORD 'your_password' SUPERUSER;
CREATE DATABASE memory_agent;
GRANT ALL PRIVILEGES ON SCHEMA public TO your_username;
GRANT ALL PRIVILEGES ON DATABASE memory_agent TO your_username;
\c memory_agent

SELECT * FROM conversations;

CREATE TABLE conversations (
    id SERIAL PRIMARY KEY,
    timestamp TIMESTAMP,
    prompt TEXT NOT NULL,
    response TEXT NOT NULL
);

INSERT INTO conversations (timestamp, prompt, response) 
VALUES 
(NOW(), 'Example prompt 1', 'Example response 1'),
(NOW(), 'Example prompt 2', 'Example response 2'),
(NOW(), 'Example prompt 3', 'Example response 3');
SELECT * FROM conversations;
GRANT ALL PRIVILEGES ON TABLE conversations TO [name];
GRANT USAGE, SELECT ON SEQUENCE conversations_id_seq TO [name];

\q

Your psql db should be good to go :)

### Ollama Setup
1. **Install Nomic Model in Ollama**:
    ```bash
    ollama pull nomic-model

2. **Install Llama 3 in Ollama**:
    ```bash
    ollama pull llama-3

### Miniconda3
1. **Setup**:
    ```bash
    conda create --name arc_env python=3.11
    conda activate arc_env
    pip install -r requirements.txt

### Hackathon Build Plans:
0. JavaScript WebUI wrapper for python script, Nginx?
https://nginx.org/en/

1. SearchXNG or Brave Search API for Data Scraping
https://github.com/searxng/searxng
https://brave.com/search/api/

2. Implement Crew Ai for agent swarms and mass email, and posting
https://www.deeplearning.ai/short-courses/multi-ai-agent-systems-with-crewai/
