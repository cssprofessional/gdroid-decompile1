package io.ktor.util.pipeline;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: compiled from: PhaseContent.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PhaseContent<TSubject, Call> {
    public static final Companion Companion = new Companion(null);
    public static final List<Object> SharedArrayList = new ArrayList();
    public List<Function3<PipelineContext<TSubject, Call>, TSubject, Continuation<? super Unit>, Object>> interceptors;
    public final PipelinePhase phase;
    public final PipelinePhaseRelation relation;
    public boolean shared;

    public PhaseContent(PipelinePhase phase, PipelinePhaseRelation relation, List<Function3<PipelineContext<TSubject, Call>, TSubject, Continuation<? super Unit>, Object>> interceptors) {
        Intrinsics.checkNotNullParameter(phase, "phase");
        Intrinsics.checkNotNullParameter(relation, "relation");
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        this.phase = phase;
        this.relation = relation;
        this.interceptors = interceptors;
        this.shared = true;
    }

    public final PipelinePhase getPhase() {
        return this.phase;
    }

    public final PipelinePhaseRelation getRelation() {
        return this.relation;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PhaseContent(PipelinePhase phase, PipelinePhaseRelation relation) {
        Intrinsics.checkNotNullParameter(phase, "phase");
        Intrinsics.checkNotNullParameter(relation, "relation");
        List<Object> list = SharedArrayList;
        Intrinsics.checkNotNull(list, "null cannot be cast to non-null type kotlin.collections.MutableList<@[ExtensionFunctionType] kotlin.coroutines.SuspendFunction2<io.ktor.util.pipeline.PipelineContext<TSubject of io.ktor.util.pipeline.PhaseContent, Call of io.ktor.util.pipeline.PhaseContent>, TSubject of io.ktor.util.pipeline.PhaseContent, kotlin.Unit>>");
        this(phase, relation, TypeIntrinsics.asMutableList(list));
        if (!list.isEmpty()) {
            throw new IllegalStateException("The shared empty array list has been modified");
        }
    }

    public final boolean isEmpty() {
        return this.interceptors.isEmpty();
    }

    public final int getSize() {
        return this.interceptors.size();
    }

    public final void addInterceptor(Function3<? super PipelineContext<TSubject, Call>, ? super TSubject, ? super Continuation<? super Unit>, ? extends Object> interceptor) {
        Intrinsics.checkNotNullParameter(interceptor, "interceptor");
        if (this.shared) {
            copyInterceptors();
        }
        this.interceptors.add(interceptor);
    }

    public final void addTo(List<Function3<PipelineContext<TSubject, Call>, TSubject, Continuation<? super Unit>, Object>> destination) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        List<Function3<PipelineContext<TSubject, Call>, TSubject, Continuation<? super Unit>, Object>> list = this.interceptors;
        if (destination instanceof ArrayList) {
            ArrayList arrayList = (ArrayList) destination;
            arrayList.ensureCapacity(arrayList.size() + list.size());
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            destination.add(list.get(i));
        }
    }

    public final List<Function3<PipelineContext<TSubject, Call>, TSubject, Continuation<? super Unit>, Object>> sharedInterceptors() {
        this.shared = true;
        return this.interceptors;
    }

    public final List<Function3<PipelineContext<TSubject, Call>, TSubject, Continuation<? super Unit>, Object>> copiedInterceptors() {
        return CollectionsKt___CollectionsKt.toMutableList((Collection) this.interceptors);
    }

    public String toString() {
        return "Phase `" + this.phase.getName() + "`, " + getSize() + " handlers";
    }

    public final void copyInterceptors() {
        this.interceptors = copiedInterceptors();
        this.shared = false;
    }

    /* JADX INFO: compiled from: PhaseContent.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
