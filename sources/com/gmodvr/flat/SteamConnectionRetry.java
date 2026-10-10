package com.gmodvr.flat;

import com.gmodvr.flat.SteamSession;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
final class SteamConnectionRetry {
    static final int MAX_ATTEMPTS = 3;

    public interface Attempt {
        void run() throws Exception;
    }

    public interface Reconnect {
        void run(int i) throws Exception;
    }

    public static void run(Attempt attempt, Reconnect reconnect) throws Exception {
        int i = 1;
        while (!Thread.currentThread().isInterrupted()) {
            try {
                attempt.run();
                return;
            } catch (SteamSession.ConnectionLost | TimeoutException e) {
                if (i == 3) {
                    throw e;
                }
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedException();
                }
                i++;
                reconnect.run(i);
            }
        }
        throw new InterruptedException();
    }
}
