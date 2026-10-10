package io.ktor.client.statement;

import io.ktor.util.pipeline.Pipeline;
import io.ktor.util.pipeline.PipelinePhase;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: HttpResponsePipeline.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpReceivePipeline extends Pipeline<HttpResponse, Unit> {
    public final boolean developmentMode;
    public static final Phases Phases = new Phases(null);
    public static final PipelinePhase Before = new PipelinePhase("Before");
    public static final PipelinePhase State = new PipelinePhase("State");
    public static final PipelinePhase After = new PipelinePhase("After");

    public /* synthetic */ HttpReceivePipeline(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }

    @Override // io.ktor.util.pipeline.Pipeline
    public boolean getDevelopmentMode() {
        return this.developmentMode;
    }

    /* JADX INFO: compiled from: HttpResponsePipeline.kt */
    public static final class Phases {
        public /* synthetic */ Phases(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Phases() {
        }

        public final PipelinePhase getBefore() {
            return HttpReceivePipeline.Before;
        }

        public final PipelinePhase getAfter() {
            return HttpReceivePipeline.After;
        }
    }

    public HttpReceivePipeline(boolean z) {
        super(Before, State, After);
        this.developmentMode = z;
    }
}
