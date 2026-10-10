package org.slf4j.event;

import java.util.ArrayList;
import java.util.List;
import org.slf4j.Marker;
import org.slf4j.helpers.SubstituteLogger;

/* JADX INFO: loaded from: classes3.dex */
public class SubstituteLoggingEvent implements LoggingEvent {
    public Object[] argArray;
    public Level level;
    public SubstituteLogger logger;
    public String loggerName;
    public List<Marker> markers;
    public String message;
    public String threadName;
    public Throwable throwable;
    public long timeStamp;

    public Level getLevel() {
        return this.level;
    }

    public void setLevel(Level level) {
        this.level = level;
    }

    public void addMarker(Marker marker) {
        if (marker == null) {
            return;
        }
        if (this.markers == null) {
            this.markers = new ArrayList(2);
        }
        this.markers.add(marker);
    }

    public void setLoggerName(String str) {
        this.loggerName = str;
    }

    public SubstituteLogger getLogger() {
        return this.logger;
    }

    public void setLogger(SubstituteLogger substituteLogger) {
        this.logger = substituteLogger;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setArgumentArray(Object[] objArr) {
        this.argArray = objArr;
    }

    public void setTimeStamp(long j) {
        this.timeStamp = j;
    }

    public void setThreadName(String str) {
        this.threadName = str;
    }

    public void setThrowable(Throwable th) {
        this.throwable = th;
    }
}
