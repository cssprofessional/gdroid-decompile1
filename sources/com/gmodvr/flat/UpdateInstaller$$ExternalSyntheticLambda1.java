package com.gmodvr.flat;

import com.gmodvr.flat.UpdateDownload;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class UpdateInstaller$$ExternalSyntheticLambda1 implements UpdateDownload.Cancellation {
    public final /* synthetic */ UpdateManager f$0;

    @Override // com.gmodvr.flat.UpdateDownload.Cancellation
    public final boolean canceled() {
        return this.f$0.isCanceled();
    }
}
