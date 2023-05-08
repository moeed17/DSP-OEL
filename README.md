# DSP-OEL
This Open-Ended Lab focuses on visualizing and performing analysis using various signal processing techniques of the audio waveform of 220V, 50 Hz AC mains. Submitted as a part of course-lab work for Digital Signal Processing (EE-394) as a part of Electrical Engineering at NEDUET.

## Project Report
The details of the project are summarized in the 2 reports [here](https://github.com/moeed17/DSP-OEL/blob/main/DSP_OpenEnded_1.pdf) and [here](https://github.com/moeed17/DSP-OEL/blob/main/DSP_OpenEnded_2.pdf).

## Group Members & their Contribution
Ali Aman EE-136 -> Performing Experiment

[Hammad Ali Khan EE-139](https://github.com/hammaad2002) -> Coding 

[Abdul Moeed EE-170](https://github.com/moeed17) -> Report 

## What this exercise is all about?
The problem is that we all know that AC mains are a sinusoidal signal. But to visualize this, we need an oscilloscope which isn't readily available to everyone. Thus one of the objectives of this lab work is to develop a system, a way to visualize those signals.

The first thing in achieving this feat of visualizing the AC signals is to step down the 220 V with the help of a step-down transformer to just 12V. The next step is to apply this 12 V to a Voltage Divider Circuit (VDR) which further reduces this 12V signal to just 1V. Since it is well established that we are dealing with signals and in particular a sinusoidal signal oscillating with a specific frequency. To visualize this "sound" we need to give the computer an "audio" input which is this stepped down 1V (initially 220V). This is done by an audio jack which gives the computer this audio data.

After the audio jack, the signal is transformed into a digital signal i.e. the audio jack is basically functioning as an ADC (Analog to Digital converter). Here all the necessary conversions take place (e.g. Sampling, Quantization, etc).
After this conversion, there are basically two ways to carry out these labs further:
1) Use Simulink Environment which involves building a model from the Simulink library which reads this audio from the audio jack and plots its waveform. Nothing wrong with this method and those who don't want to delve into complexities can use this and get done with this lab here.

2) Use MATLAB coding. Now one can find out codes for such exercises online but credit to our team member and main coding guy on this exercise [Hammad Ali Khan](https://github.com/hammaad2002) for developing it in such a way that it could visualize the signal in real-time. You can physically see the signal live and if the power source is turned off the signal also goes away and so on.
To see the codes [Click here](https://github.com/moeed17/DSP-OEL/tree/main/Open%20Ended)

      We have performed both labs using MATLAB coding
 
There are 2 open labs as a part of the lab coursework for this course. Though both are almost the same they just differ in the objectives
1) OEL 1 focuses on just visualizing the voltage signal from AC mains and the resulting current signal if a ***Linear*** load is connected.
2) OEL 2 focuses on visualizing the voltage and current signal if a ***Harmonic or Non-Linear load*** is connected.

### OEL-1
Linear loads are such loads that obey Ohms Law: ***V=IR***. When a sinusoidal voltage is applied to a linear load, such as resistors, inductors, and capacitors, the behavior of the load elements causes the current flowing through them to also be sinusoidal. The linear load we used here was an Incandescent light bulb.
Hence for OEL 1, the observed waveforms as expected were both sinusoidal:

- **OEL-1 Observed Voltage Waveform:**

 ![OEL-1 Observed Voltage Waveform](https://github.com/moeed17/DSP-OEL/blob/main/Images/OEL-Voltage%20Waveform.jpg)


- **OEL-1 Observed Current Waveform:**

 ![OEL-1 Observed Current Waveform](https://github.com/moeed17/DSP-OEL/blob/main/Images/OEL-1%20Current%20Waveform.jpg)

Thus the point is validated here that linear loads in fact draw sinusoidal current. Further, we can apply signal processing techniques for spectral analysis in this case, we took Discrete Fourier Transform (DFT) of the observed waveforms:

- **OEL-1 DFT of Observed Current Waveform:**

 ![OEL-1 DFT](https://github.com/moeed17/DSP-OEL/blob/main/Images/OEL-1%20DFT.jpg)

At this point, OEL-1 ends. 

### OEL-2
Moving on to OEL-2.
The objective of this lab was to not only observe but also perform the spectral analysis on the resulting current waveform. Here we are dealing with something called ***Non-Linear Load***. By nonlinear loads we mean such loads that don’t follow Ohm’s law i.e., their current doesn’t linearly vary with the voltage. Now such loads draw a current that is not necessarily sinusoidal hence causing ***Current Harmonics***. Their pattern can be quite complex depending upon the load itself and its interaction with other components of the system to which it's connected.
Non-linear load currents distort the pure sinusoidal voltage/current waveform supplied by the utility, and this may result in resonance.

Harmonics in electrical power systems are in simple words frequencies. Harmonics of a voltage or current is a waveform whose frequencies are an integral multiple of the fundamental frequency. By integral multiple, we mean for example third harmonic is the third multiple of the fundamental frequency. It’s well established at this point that this fundamental frequency in our case is 50Hz, so the third harmonic of 50Hz will be 150 Hz.

As discussed above these waveforms aren’t necessarily sinusoids and can be way more complex, that depends. Regardless of how complex the current waveform becomes, the Fourier series transform makes it possible to deconstruct the complex waveform into a series of simple sinusoids, which start at the power system's fundamental frequency and occur at integer multiples of the fundamental frequency.

Another term that goes side by side with DFT is ***Leakage***. If the input signal contains any frequency which is ***NOT*** integer multiple of analysis frequencies (which is the most probably happening case), it will show up in all DFT output bins or leaks out to all DFT output bins. This effect is simply known as **DFT Leakage/ Spectral Leakage**.
Another way to think about DFT leakage is, when the input signal has frequencies that do not complete an integer number of cycles in the sample interval N (Length of DFT), the input to DFT seems like abruptly starting and abruptly ending giving rise to side lobes in the DFT output.

For real-life signals, DFT leakage can never be entirely eliminated because no matter what point DFT you take and no matter what your sampling rate is, there is a very high probability that the input would contain a frequency that is not an integer multiple of analysis frequencies and DFT leakage would happen. We 
can minimize DFT leakage by multiplying the input with a smooth window which will make the input go from zero to maximum and back to zero in a very smooth and slow fashion. This reduces the abruptness of the input which minimizes the higher sides lobes in the DFT output.

Thus the very objective of this OEL is to perform the spectral analysis of the signal and reduce the harmonics induced by the use of non-linear load through various signal processing techniques. In our case, it is the application of a suitable windowing function to minimize the effect of harmonics which we will observe through experimentation.

The experimental setup is completely the same as the OEL-1. However, the load connected here during observation of current is a Fluorescent light bulb due to its properties of inducing harmonics.

The voltage waveform here will be same as OEL-1 (Main input is 220V 50Hz still):
- **OEL-2 Observed Voltage Waveform:**

 ![OEL-2 Observed Voltage Waveform](https://github.com/moeed17/DSP-OEL/blob/main/Images/OEL-Voltage%20Waveform.jpg)
 
 But the current waveform will be non-sinusoidal because of a non-linear load connected:
 - **OEL-2 Observed Current Waveform:**

 ![OEL-2 Observed Current Waveform](https://github.com/moeed17/DSP-OEL/blob/main/Images/OEL-2%20Current.jpg)
 
 Taking the DFT of the observed Voltage waveform we see:
- **OEL-2 DFT of Voltage Waveform:**

 ![OEL-2 DFT of Voltage Waveform](https://github.com/moeed17/DSP-OEL/blob/main/Images/OEL-2%20DFT.jpg)
 
It’s odd seeing leakage in the voltage waveform’s DFT. We as a group are unable to answer this. One theory that we have discussed and mutually agreed on is that since the observed leakage is in close vicinity of 50 Hz so we can say that they are sort of insignificant being close to 50Hz. However, if these 
were observed around 40Hz 60Hz etc. we would then have considered it as a major fault or blunder in our observations.

 
 Now if we look at the DFT of the observed current waveform:
 - **OEL-2 DFT of Current Waveform:**

 ![OEL-2 Observed Current Waveform](https://github.com/moeed17/DSP-OEL/blob/main/Images/OEL-2%20Current%20DFT.jpg)
 
We observe that odd harmonics are present and that the main contributor is the fundamental frequency i.e., 50 Hz, and after that, every harmonic is small in magnitude than the fundamental frequency but their frequency is 𝑛 𝑡𝑖𝑚𝑒𝑠 the fundamental.

Now if we apply a suitable window to the DFT we can see a significant reduction in the magnitude of these harmonics:
- **OEL-2 Windowed DFT:**

 ![OEL-2 Windowed DFT](https://github.com/moeed17/DSP-OEL/blob/main/Images/OEL-2%20Current%20DFT%20Windowed.jpg)

After window application leakage is minimized to a great extent only that remains are of odd harmonics which is understandable.

## Results/Observations
1) We have successfully demonstrated a way to visualize in real-time the AC mains signal. We have always studied in theory that these are sinusoids but this is where we practically see them and that too in real-time.
2) Linear loads draw linear currents hence the current waveform of linear loads is also sinusoidal.
3) Non-linear loads induce harmonics and hence the current waveform of non-linear loads in a non-sinusoidal.
4) By application of suitable signal processing techniques we can minimize the effects of harmonics and improve the quality of power being drawn or delivered. Hence it is made sure that in power systems harmonics don't occur as they are bad news to a healthy working system.
 
For more, you can see reports for hardware and technical details, calculations, experimental setup pictures, and the codes. 
Additionally you can find my lab manual for the course with complete exercises and their results along with the codes [here](https://github.com/moeed17/DSP-OEL/tree/main/DSP%20Lab%20Codes) and also theory lecture slides/ppts, notes etc. [here](https://drive.google.com/drive/folders/1i9jw4DORXgaRWLRP4X2hMhOXINS4etxQ)
