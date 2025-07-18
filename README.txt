Project: Analog Circuit Netlist Generation via LLM Fine-Tuning
User: Abhilash Bikkannavar, ECE Dept, KLE technological UNiversity

Purpose:
We are fine-tuning Mistral-7B using Axolotl on a dataset (analoggenie.jsonl) that contains descriptions of analog circuits and their SPICE netlists. This project is part of a generative AI tool for analog IC design.

Resources Needed:
- 4 GPUs for 3 epochs (approx. 6–12 hours expected training time)
- Python 3.10 environment with CUDA 11.8
- Internet NOT required (dataset and models are local)

Environment Setup:
- Using Dockerfile for reproducible environment
- Training is launched via `train.sh`
- Axolotl version 1.1.4, QLoRA, and bitsandbytes are used

Expected Output:
- LoRA adapters for Mistral-7B stored in `./output/`
- Merged model will be used to generate analog netlists from text prompts

Please contact me at: abhilashbikkannavar@gmail.com for any clarification.
