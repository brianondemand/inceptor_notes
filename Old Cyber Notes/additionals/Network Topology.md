## What is Network Topology?

**Network Topology**, you may wonder what this means. Basically a network topology means a kind of arrangement of the elements of a communication network. In other words, network topology refers to the geometric shape that a network takes when it is laid physically. When it comes to networks there are many ways a network can be arranged.

There are five types of network topology in computer networks:

1. **Bus Topology**
2. **Ring Topology**
3. **Mesh Topology**
4. **Star Topology**
5. **Tree Topology**
6. **Hybrid Topology**

### 1) Bus Topology

Bus topology is a network type in which every computer and network device is connected to single cable. When it has exactly two endpoints, then it is called **Linear Bus topology**.

![bus-topology](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fbus-topology.png&w=3840&q=75)

#### Features of Bus Topology

- It transmits data only in one direction.
- Every device is connected to a single cable

#### Advantages of Bus Topology

- It is cost effective
- Cable required is least compared to other network topology.
- Used in small networks.
- It is easy to understand.
- Easy to expand joining two cables together.

#### Disadvantages of Bus Topology

- Cable fails then whole network fails
- If network traffic is heavy or nodes are more the performance of the network decreases.
- Cable has a limited length.
- It is slower than the ring topology.

### 2) Ring Topology

It is called ring topology because it forms a ring as each computer is connected to another computer, with the last one connected to the first. Exactly two neighbors for each device.

![ring-topology](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fring-topology.png&w=3840&q=75)

#### Features of Ring Topology

- A number of repeaters are used for Ring topology with large number of nodes because if someone wants to send some data to the last node in the ring topology with 100 nodes, then the data will have to pass through 99 nodes to reach the 100th node. Hence to prevent data loss repeaters are used in the network.
- The transmission is unidirectional, but it can be made bidirectional by having 2 connections between each Network Node, it is called **Dual Ring Topology**.
- In Dual Ring Topology, two ring networks are formed, and data flow is in opposite direction in them. Also, if one fails the second rin can act as a backup, to keep the network up.
- Data is transferred in a sequential manner that is bit by bit. Data transmitted, has to pass through each node of the network, till the destination node.

#### Advantages of Ring Topology

- Transmitting network is not affected by high traffic or by adding more nodes, as only the nodes having tokens can transmit data.
- Cheap to install and expand.

#### Disadvantages of Ring Topology

- Troubleshooting is difficult in ring topology.
- Adding or deleting the computers disturbs the network activity.
- Failure of one computer disturbs the whole network.

### 3) Star Topology

In this type of topology all the computers are connected to a single hub through a cable. This hub is the central node and all others nodes are connected to the central node.

![star-topology](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fstar-topology.png&w=3840&q=75)

#### Features of Star Topology

- Every node has its own dedicated connection to the hub.
- Hub acts as a repeater for data flow.
- Can be used with twisted pair, Optical Fibre or coaxial cable.

#### Advantages of Star Topology

- Fast performance with few nodes and low network traffic.
- Hub can be upgraded easily.
- Easy to troubleshoot.
- Easy to setup and modify.
- Only that node is affected which has failed, rest of the nodes can work smoothly.

#### Disadvantages of Star Topology

- Cost of installation is high
- Expensive to use.
- If the hub fails then the whole network is stopped because all the nodes depend on the hub.
- Performance is based on the hub that is it depends on its capacity

### 4) Mesh Topology

It is a point-to-point connection to other nodes or devices. All the network nodes are connected to each other. Mesh has `n(n-1)/2` physical channels to link `n` devices.

There are two techniques to transmit data over the Mesh topology, they are:

1. Routing
2. Flooding

#### Mesh Topology: Routing

In routing, the nodes have a routing logic, as per the network requirements. Like routing to direct the data to reach the destination using the shortest distance. Or, routing logic which has information about the broken links, and it avoids those node etc. We can even have routing logic, to re-configure the failed nodes.

#### Mesh Topology: Flooding

In flooding, the same data is transmitted to all the network nodes hence no routing logic required. The network is robust, and the its very unlikely to lose the data. But it leads to unwanted load over the network

#### Types of Mesh Topology

1. **Partial Mesh Topology**: In this topology some of the systems are connected in the same fashion as mesh topology but some devices are only connected to two or three devices.
2. **Full Mesh Topology**: Each and every nodes or devices are connected to each other.

![mesh-topology](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fmesh-topology.png&w=3840&q=75)

#### Features of Mesh Topology

- Fully connected
- Robust.
- Not flexible.

#### Advantages of Mesh Topology

- Each connection can carry its own data load.
- It is robust.
- Fault is diagnosed easily.
- Provides security and privacy.

#### Disadvantages of Mesh Topology

- Installation and configuration is difficult.
- Cabling cost is more.
- Bulk wiring is required.

### 5) Tree Topology

It has a root node and all other nodes are connected to it forming a hierarchy. It is also called hierarchical topology. It should at least have three levels to the hierarchy.

![tree-topology](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Ftree-topology.png&w=3840&q=75)

#### Features of Tree Topology

- Ideal if workstations are located in groups.
- Used in Wide Area Network

#### Advantages of Tree Topology

- Extension of bus and star topologies.
- Expansion of nodes is possible and easy.
- Easily manages and maintained.
- Error detection is easily done.

#### Disadvantages of Tree Topology

- Heavily cabled.
- Costly.
- If more nodes are added maintenance is difficult.
- Central hub fails, network fails.

### 6) Hybrid Topology

It is two different types of topologies which is a mixture of two or more topologies. For example if in an office in one department ring topology is used and in another star topology is used, connecting these topologies will result in Hybrid Topology (ring topology and star topology).

![hybrid-topology](https://www.hkrhasan.com/_next/image?url=%2Fstatic%2Fimages%2Fnetworking%2Fhybrid-topology.png&w=3840&q=75)

#### Features of Hybrid Topology

- It is a combination of two or topologies
- Inherits the advantages and disadvantages of the topologies included

#### Advantages of Hybrid Topology

- Reliable as Error detecting and trouble shooting is easy.
- Effective.
- Scalable as size can be increased easily.
- Flexible.

#### Disadvantages of Hybrid Topology

- Complex in design.
- Costly.

---