package in.dragonbra.javasteam.networking.steam3;

import in.dragonbra.javasteam.util.NetHelpers;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;

/* JADX INFO: loaded from: classes.dex */
public class TcpConnection extends Connection {
    private static final int MAGIC = 825250902;
    private static final Logger logger = LogManager.getLogger(TcpConnection.class);
    private InetSocketAddress currentEndPoint;
    private final Object netLock = new Object();
    private NetLoop netLoop;
    private BinaryReader netReader;
    private Thread netThread;
    private BinaryWriter netWriter;
    private Socket socket;

    /* JADX INFO: Access modifiers changed from: private */
    public void shutdown() {
        try {
            if (this.socket.isConnected()) {
                this.socket.shutdownInput();
                this.socket.shutdownOutput();
            }
        } catch (IOException e) {
            logger.debug(e);
        }
    }

    private void connectionCompleted(boolean z) {
        if (!z) {
            logger.debug("Timed out while connecting to " + String.valueOf(this.currentEndPoint));
            release(false);
            return;
        }
        logger.debug("Connected to " + String.valueOf(this.currentEndPoint));
        try {
            synchronized (this.netLock) {
                this.netReader = new BinaryReader(this.socket.getInputStream());
                this.netWriter = new BinaryWriter(this.socket.getOutputStream());
                this.netLoop = new NetLoop();
                this.netThread = new Thread(this.netLoop, "TcpConnection Thread");
                this.currentEndPoint = new InetSocketAddress(this.socket.getInetAddress(), this.socket.getPort());
            }
            this.netThread.start();
            onConnected();
        } catch (IOException e) {
            logger.debug("Exception while setting up connection to " + String.valueOf(this.currentEndPoint), e);
            release(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release(boolean z) {
        synchronized (this.netLock) {
            BinaryWriter binaryWriter = this.netWriter;
            if (binaryWriter != null) {
                try {
                    binaryWriter.close();
                } catch (IOException unused) {
                }
                this.netWriter = null;
            }
            BinaryReader binaryReader = this.netReader;
            if (binaryReader != null) {
                try {
                    binaryReader.close();
                } catch (IOException unused2) {
                }
                this.netReader = null;
            }
            Socket socket = this.socket;
            if (socket != null) {
                try {
                    socket.close();
                } catch (IOException unused3) {
                }
                this.socket = null;
            }
        }
        onDisconnected(z);
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public void connect(InetSocketAddress inetSocketAddress, int i) {
        synchronized (this.netLock) {
            this.currentEndPoint = inetSocketAddress;
            try {
                logger.debug("Connecting to " + String.valueOf(inetSocketAddress) + "...");
                Socket socket = new Socket();
                this.socket = socket;
                socket.connect(inetSocketAddress, i);
                connectionCompleted(true);
            } catch (IOException e) {
                logger.debug("Socket exception while completing connection request to " + String.valueOf(this.currentEndPoint), e);
                connectionCompleted(false);
            }
        }
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public void disconnect(boolean z) {
        synchronized (this.netLock) {
            try {
                NetLoop netLoop = this.netLoop;
                if (netLoop != null) {
                    netLoop.stop(z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] readPacket() throws IOException {
        int i = this.netReader.readInt();
        if (this.netReader.readInt() != MAGIC) {
            throw new IOException("Got a packet with invalid magic!");
        }
        return this.netReader.readBytes(i);
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public void send(byte[] bArr) {
        synchronized (this.netLock) {
            if (this.socket == null) {
                logger.debug("Attempting to send client data when not connected.");
                return;
            }
            try {
                this.netWriter.writeInt(bArr.length);
                this.netWriter.writeInt(MAGIC);
                this.netWriter.write(bArr);
            } catch (IOException e) {
                logger.debug("Socket exception while writing data.", e);
                NetLoop netLoop = this.netLoop;
                if (netLoop != null) {
                    netLoop.stop(false);
                }
            }
        }
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public InetAddress getLocalIP() {
        synchronized (this.netLock) {
            Socket socket = this.socket;
            if (socket == null) {
                return null;
            }
            try {
                return NetHelpers.getLocalIP(socket);
            } catch (Exception e) {
                logger.debug("Socket exception trying to read bound IP: ", e);
                return null;
            }
        }
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public InetSocketAddress getCurrentEndPoint() {
        return this.currentEndPoint;
    }

    @Override // in.dragonbra.javasteam.networking.steam3.Connection
    public ProtocolTypes getProtocolTypes() {
        return ProtocolTypes.TCP;
    }

    public class NetLoop implements Runnable {
        private static final int POLL_MS = 100;
        private volatile boolean cancelRequested;
        private volatile boolean userRequested;

        private NetLoop() {
            this.cancelRequested = false;
            this.userRequested = false;
        }

        public void stop(boolean z) {
            this.userRequested = z;
            this.cancelRequested = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!this.cancelRequested) {
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e) {
                    TcpConnection.logger.debug("Thread interrupted", e);
                }
                if (this.cancelRequested) {
                    break;
                }
                try {
                    if (TcpConnection.this.netReader.available() > 0) {
                        try {
                            TcpConnection.this.onNetMsgReceived(new NetMsgEventArgs(TcpConnection.this.readPacket(), TcpConnection.this.currentEndPoint));
                        } catch (IOException e2) {
                            TcpConnection.logger.debug("Socket exception occurred while reading packet", e2);
                        }
                    }
                } catch (IOException e3) {
                    TcpConnection.logger.debug("Socket exception while polling", e3);
                }
            }
            if (this.cancelRequested) {
                TcpConnection.this.shutdown();
            }
            TcpConnection.this.release(this.cancelRequested && this.userRequested);
        }
    }
}
