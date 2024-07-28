# PCI Arbiter Design Using ASM Chart

In any digital system, there is a system bus, and there are several units demanding the use of it. **A bus arbiter is a simple circuit granting the bus to one of the users requesting it**. The granting is done on the basis of *predefined priority*.

## Example under Consideration

In this particular project, we design the Bus Arbiter for four Masters, namely:
* Video Grabber
* Video Codec
* Fire Wire
* CPU(HOST)

All these are components used in Image Compression Design. Without going into the details and respecting the given priority, we developed an ASM Chart to implement the design.

## Priority

1) Video Grabber
2) Video Codec
3) Fire Wire
4) Video Grabber
5) Video Codec
6) CPU and back to 1.

## Architechture

![Architechture](https://github.com/user-attachments/assets/09dfdb75-7689-4637-abce-c5391829b25d)

## ASM Chart

![ASM](https://github.com/user-attachments/assets/18a1a846-7877-4ad9-94f9-ae6d51a6aba9)
![ASM1](https://github.com/user-attachments/assets/4f712e75-61de-41fb-810e-78de45b0e2b2)
