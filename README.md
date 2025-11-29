# Remove High-Frequency Noise using FIR LPF

### Prerequisites

* **MATLAB:** You need to have MATLAB installed on your system to run the provided script.

### Installation

1.  **Clone the Repository:**
    ```bash
    
    git clone https://github.com/therajsoren/Matlab-Projects.git
    ```
3.  **Alternatively:** Copy the code from audio.m and create a new file on MATLAB and paste the code in it.

## Usage

Follow these simple steps to remove noise from your audio file:

1.  **Place Your Audio:** Copy your noisy audio file (e.g., `.wav`, `.mp3`, `.flac`) into the **same directory** where the MATLAB script (`main.m` or whatever your script is named) is located.
2.  **Open in MATLAB:** Launch MATLAB and navigate to the project directory.
3.  **Edit the Script:**
    * Open the main MATLAB script (e.g., `main.m`).
    * **Input Filename:** Locate the line that defines the input audio file (it might look something like `[x, Fs] = audioread('car-audio.mp3');`). **Change `'car-audio.mp3'` to the exact filename of your noisy audio.**
    * **Output Filename:** Locate the line that defines the output audio file (e.g., `audiowrite('car-audio.wav', r, Fs);`). You can **change `'car-audio.wav'` to your desired name** for the denoised audio output.
4.  **Run the Script:**
    * In the MATLAB Command Window, type the name of your script (e.g., `main`) and press Enter:
        ```matlab
        main
        ```
5.  **Listen to the Result:** Once the script completes execution, a new audio file with your specified output name will be created in the project directory. Play this file to hear the high-frequency noise-reduced version of your original audio.
