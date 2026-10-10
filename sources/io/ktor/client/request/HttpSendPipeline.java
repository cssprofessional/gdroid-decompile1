package io.ktor.client.request;

import io.ktor.util.pipeline.Pipeline;
import io.ktor.util.pipeline.PipelinePhase;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: HttpRequestPipeline.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpSendPipeline extends Pipeline<Object, HttpRequestBuilder> {
    public final boolean developmentMode;
    public static final Phases Phases = new Phases(null);
    public static final PipelinePhase Before = new PipelinePhase("Before");
    public static final PipelinePhase State = new PipelinePhase("State");
    public static final PipelinePhase Monitoring = new PipelinePhase("Monitoring");
    public static final PipelinePhase Engine = new PipelinePhase("Engine");
    public static final PipelinePhase Receive = new PipelinePhase("Receive");

    public /* synthetic */ HttpSendPipeline(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }

    @Override // io.ktor.util.pipeline.Pipeline
    public boolean getDevelopmentMode() {
        return this.developmentMode;
    }

    public HttpSendPipeline(boolean z) {
        super(Before, State, Monitoring, Engine, Receive);
        this.developmentMode = z;
    }

    /* JADX INFO: compiled from: HttpRequestPipeline.kt */
    public static final class Phases {
        public /* synthetic */ Phases(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Phases() {
        }

        public final PipelinePhase getEngine() {
            return HttpSendPipeline.Engine;
        }

        public final PipelinePhase getReceive() {
            return HttpSendPipeline.Receive;
        }
    }
}
