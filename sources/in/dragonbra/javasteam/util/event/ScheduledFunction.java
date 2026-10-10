package in.dragonbra.javasteam.util.event;

import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class ScheduledFunction {
    private boolean bStarted = false;
    private long delay;
    private final Runnable func;
    private Timer timer;

    public ScheduledFunction(Runnable runnable, long j) {
        this.delay = j;
        this.func = runnable;
    }

    public void start() {
        if (this.bStarted) {
            return;
        }
        Timer timer = new Timer();
        this.timer = timer;
        timer.scheduleAtFixedRate(new TimerTask() { // from class: in.dragonbra.javasteam.util.event.ScheduledFunction.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (ScheduledFunction.this.func != null) {
                    ScheduledFunction.this.func.run();
                }
            }
        }, 0L, this.delay);
        this.bStarted = true;
    }

    public void stop() {
        if (this.bStarted) {
            this.timer.cancel();
            this.timer = null;
            this.bStarted = false;
        }
    }

    public long getDelay() {
        return this.delay;
    }

    public void setDelay(long j) {
        this.delay = j;
    }
}
