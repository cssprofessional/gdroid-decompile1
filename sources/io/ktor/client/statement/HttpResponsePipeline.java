package io.ktor.client.statement;

import io.ktor.client.call.HttpClientCall;
import io.ktor.util.pipeline.Pipeline;
import io.ktor.util.pipeline.PipelinePhase;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: HttpResponsePipeline.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpResponsePipeline extends Pipeline<HttpResponseContainer, HttpClientCall> {
    public final boolean developmentMode;
    public static final Phases Phases = new Phases(null);
    public static final PipelinePhase Receive = new PipelinePhase("Receive");
    public static final PipelinePhase Parse = new PipelinePhase("Parse");
    public static final PipelinePhase Transform = new PipelinePhase("Transform");
    public static final PipelinePhase State = new PipelinePhase("State");
    public static final PipelinePhase After = new PipelinePhase("After");

    public /* synthetic */ HttpResponsePipeline(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }

    @Override // io.ktor.util.pipeline.Pipeline
    public boolean getDevelopmentMode() {
        return this.developmentMode;
    }

    public HttpResponsePipeline(boolean z) {
        super(Receive, Parse, Transform, State, After);
        this.developmentMode = z;
    }

    /* JADX INFO: compiled from: HttpResponsePipeline.kt */
    public static final class Phases {
        public /* synthetic */ Phases(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Phases() {
        }

        public final PipelinePhase getReceive() {
            return HttpResponsePipeline.Receive;
        }

        public final PipelinePhase getParse() {
            return HttpResponsePipeline.Parse;
        }

        public final PipelinePhase getTransform() {
            return HttpResponsePipeline.Transform;
        }
    }
}
