package io.ktor.client.engine.cio;

import io.ktor.util.date.GMTDate;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EngineTasks.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ConnectionResponseTask {
    public final GMTDate requestTime;
    public final RequestTask task;

    public final GMTDate component1() {
        return this.requestTime;
    }

    public final RequestTask component2() {
        return this.task;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConnectionResponseTask)) {
            return false;
        }
        ConnectionResponseTask connectionResponseTask = (ConnectionResponseTask) obj;
        return Intrinsics.areEqual(this.requestTime, connectionResponseTask.requestTime) && Intrinsics.areEqual(this.task, connectionResponseTask.task);
    }

    public int hashCode() {
        return (this.requestTime.hashCode() * 31) + this.task.hashCode();
    }

    public String toString() {
        return "ConnectionResponseTask(requestTime=" + this.requestTime + ", task=" + this.task + ')';
    }

    public ConnectionResponseTask(GMTDate requestTime, RequestTask task) {
        Intrinsics.checkNotNullParameter(requestTime, "requestTime");
        Intrinsics.checkNotNullParameter(task, "task");
        this.requestTime = requestTime;
        this.task = task;
    }
}
