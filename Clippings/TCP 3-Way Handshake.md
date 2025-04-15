### How does it work?

A handshake that made the Internet possible.

I’m talking about the TCP 3-way handshake.

Every time you open a website, TCP makes sure this handshake happens and you get a reliable connection.

How does TCP pull it off?

Let’s look at each step:

## 1 - SYN (Synchronize)

- Think of it as one party extending their hand for a handshake.
- The process starts with the client sending a TCP segment to the server with the SYN flag set.
- Also, the client selects an initial sequence number (ISN) and includes it in the SYN segment. Let’s say the ISN is 1000.
- This tells the server that the client wants to establish a connection.

## 2 - SYN-ACK (Synchronize Acknowledge)

- This is like the second party taking the hand.
- The server receives the SYN segment and responds by sending a SYN-ACK segment to the client.
- Before sending, the server sets the SYN flag and the ACK flag in the segment
- The ACK flag is meant to acknowledge the receipt of the client’s SYN segment by incrementing the ISN by 1 (i.e. 1001)
- The server also selects its own ISN (let’s say 5000) and includes it in the SYN-ACK segment.

## 3 - ACK (Acknowledge)

- This is where the two parties shake hands.
- The client receives the SYN-ACK segment.
- The client acknowledges the server’s response by sending another TCP segment with the ACK flag set.
- The sequence number in the segment is set to the server’s ISN incremented by 1 (basically, 5001)

After this, the connection is established.

The diagram below shows all the three steps:

![](https://newsletter.systemdesigncodex.com/p/%7B%22src%22:%22https://substack-post-media.s3.amazonaws.com/public/images/6d8fe891-e992-42b7-a735-6ee2aeb7902b_2107x1318.png%22,%22srcNoWatermark%22:null,%22fullscreen%22:null,%22imageSize%22:null,%22height%22:911,%22width%22:1456,%22resizeWidth%22:null,%22bytes%22:327144,%22alt%22:null,%22title%22:null,%22type%22:%22image/png%22,%22href%22:null,%22belowTheFold%22:true,%22topImage%22:false,%22internalRedirect%22:null,%22isProcessing%22:false%7D)

You can play around with the diagram on Eraser.io

## FAQs

A few additional FAQs about the entire TCP handshake business:

> **What’s the deal with SYN and ACK? What are these exactly?**

In TCP, several control flags are used to manage different aspects of the communication process. These flags are bits in the TCP header.

Some common ones are SYN, ACK, FIN, RST, PSH, and so on.

> **Why sequence numbers (ISNs) are so important?**

The numbers help the client and server keep track of the message order so that nothing gets missed.

Also, these numbers are randomized and help prevent malicious actors from hijacking the TCP session.

> **Is the Internet moving away from TCP?**

HTTP/3 doesn’t use TCP but relies on QUIC (Quick UDP Internet Connections). So yes, we may see a gradual move away from TCP.

However, the majority of websites are still on HTTP/1.1 and HTTP/2. So nothing is going to happen tomorrow.

**So - what do you think about the TCP 3-way handshake?**

**Is it an overkill? Or a great mechanism for establishing connections?**

## Shoutout

Here are some interesting articles I’ve read recently:

- [Not All Features Are Equal](https://newsletter.systemdesignclassroom.com/p/not-all-features-are-equal?r=1m1f9z&utm_campaign=post&utm_medium=web) by [Raul Junco](https://open.substack.com/users/98661477-raul-junco?utm_source=mentions)
- [Refactoring](https://newsletter.francofernando.com/p/refactoring?r=1m1f9z&utm_campaign=post&utm_medium=web) by
- [Rising Above: What My Team Lead Taught Me About Problem-Solving](https://open.substack.com/pub/akoskm/p/rising-above-what-my-team-lead-taught?r=1m1f9z&utm_campaign=post&utm_medium=web) by

**That’s it for today! ☀️**

Enjoyed this issue of the newsletter?

Share with your friends and colleagues.

***See you later with another edition — Saurabh***