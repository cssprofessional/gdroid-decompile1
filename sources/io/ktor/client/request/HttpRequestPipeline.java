package io.ktor.client.request;

import io.ktor.util.pipeline.Pipeline;
import io.ktor.util.pipeline.PipelinePhase;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: HttpRequestPipeline.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpRequestPipeline extends Pipeline<Object, HttpRequestBuilder> {
    public final boolean developmentMode;
    public static final Phases Phases = new Phases(null);
    public static final PipelinePhase Before = new PipelinePhase("Before");
    public static final PipelinePhase State = new PipelinePhase("State");
    public static final PipelinePhase Transform = new PipelinePhase("Transform");
    public static final PipelinePhase Render = new PipelinePhase("Render");
    public static final PipelinePhase Send = new PipelinePhase("Send");

    public /* synthetic */ HttpRequestPipeline(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }

    @Override // io.ktor.util.pipeline.Pipeline
    public boolean getDevelopmentMode() {
        return this.developmentMode;
    }

    public HttpRequestPipeline(boolean z) {
        super(Before, State, Transform, Render, Send);
        this.developmentMode = z;
    }

    /* JADX INFO: compiled from: HttpRequestPipeline.kt */
    public static final class Phases {
        public /* synthetic */ Phases(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Phases() {
        }

        public final PipelinePhase getBefore() {
            return HttpRequestPipeline.Before;
        }

        public final PipelinePhase getState() {
            return HttpRequestPipeline.State;
        }

        public final PipelinePhase getRender() {
            return HttpRequestPipeline.Render;
        }

        public final PipelinePhase getSend() {
            return HttpRequestPipeline.Send;
        }
    }
}
